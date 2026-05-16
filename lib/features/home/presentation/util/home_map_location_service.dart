import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_naver_map/flutter_naver_map.dart';
import 'package:geolocator/geolocator.dart';

import '../../../../config/theme/figma_colors.dart';
import '../../../spot/domain/entity/spot.dart';

typedef HomeSpotMarkerTapCallback = void Function(int spotId);

/// 홈 지도에서 [Geolocator]로 위치를 받아 [NLocationOverlay]에 반영합니다.
final class HomeMapLocationService extends ChangeNotifier {
  static const double _cameraZoom = 15;

  StreamSubscription<Position>? _positionSubscription;
  NaverMapController? _mapController;
  NLocationOverlay? _locationOverlay;
  final Map<String, NMarker> _spotMarkers = <String, NMarker>{};
  Position? _lastPosition;
  bool _isLoadingInitialLocation = true;
  double _bottomOverlayFraction = 0.4;

  HomeSpotMarkerTapCallback? onSpotMarkerTap;

  Position? get lastPosition => _lastPosition;
  bool get isLoadingInitialLocation => _isLoadingInitialLocation;

  /// 바텀시트 등 하단 UI가 가리는 비율(0~1). 카메라 피벗 계산에 사용합니다.
  void setBottomOverlayFraction(double fraction) {
    _bottomOverlayFraction = fraction.clamp(0, 0.9);
  }

  /// 가려지지 않은 지도 영역의 세로 중앙에 위치가 오도록 피벗을 잡습니다.
  NPoint get _locationPivot =>
      NPoint(0.5, (1 - _bottomOverlayFraction) / 2);

  void _setLoadingInitialLocation(bool value) {
    if (_isLoadingInitialLocation == value) {
      return;
    }
    _isLoadingInitialLocation = value;
    notifyListeners();
  }

  Future<bool> ensurePermission() async {
    final bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return false;
    }

    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
    }

    return permission == LocationPermission.always ||
        permission == LocationPermission.whileInUse;
  }

  Future<void> attach(NaverMapController controller) async {
    _setLoadingInitialLocation(true);
    try {
      _mapController = controller;
      _locationOverlay = controller.getLocationOverlay();
      _configureOverlay(_locationOverlay!);

      if (!await ensurePermission()) {
        return;
      }

      try {
        final Position position = await Geolocator.getCurrentPosition(
          locationSettings: const LocationSettings(
            accuracy: LocationAccuracy.high,
          ),
        );
        await _applyPosition(position);
        await _moveCameraTo(
          NLatLng(position.latitude, position.longitude),
        );
      } on LocationServiceDisabledException {
        return;
      } on PermissionDeniedException {
        return;
      }

      _positionSubscription = Geolocator.getPositionStream(
        locationSettings: const LocationSettings(
          accuracy: LocationAccuracy.high,
          distanceFilter: 5,
        ),
      ).listen((Position position) {
        unawaited(_applyPosition(position));
      });
    } finally {
      _setLoadingInitialLocation(false);
    }
  }

  void _configureOverlay(NLocationOverlay overlay) {
    overlay
      ..setIconSize(const Size.square(24))
      ..setCircleRadius(20)
      ..setCircleColor(FigmaColors.primary300.withValues(alpha: 0.24))
      ..setSubAnchor(const NPoint(0.5, 1))
      ..setIsVisible(true);
  }

  Future<void> _applyPosition(Position position) async {
    _lastPosition = position;
    final NLocationOverlay? overlay = _locationOverlay;
    if (overlay == null) {
      return;
    }

    overlay.setPosition(NLatLng(position.latitude, position.longitude));

    final double? bearing = _validHeading(position.heading);
    if (bearing != null) {
      overlay.setBearing(bearing);
    }
  }

  double? _validHeading(double heading) {
    if (heading < 0) {
      return null;
    }
    return heading;
  }

  Future<void> moveToCurrentLocation() async {
    final NaverMapController? controller = _mapController;
    final NLocationOverlay? overlay = _locationOverlay;
    if (controller == null || overlay == null) {
      return;
    }

    if (!await ensurePermission()) {
      return;
    }

    Position position;
    try {
      position = _lastPosition ??
          await Geolocator.getCurrentPosition(
            locationSettings: const LocationSettings(
              accuracy: LocationAccuracy.high,
            ),
          );
    } on LocationServiceDisabledException {
      return;
    }

    final NLatLng target =
        NLatLng(position.latitude, position.longitude);
    overlay.setPosition(target);

    final double? bearing = _validHeading(position.heading);
    if (bearing != null) {
      overlay.setBearing(bearing);
    }

    await _moveCameraTo(target);
  }

  Future<void> moveToCoordinates({
    required double latitude,
    required double longitude,
  }) async {
    await _moveCameraTo(NLatLng(latitude, longitude));
  }

  /// 조회된 스팟 좌표로 마커를 갱신합니다.
  Future<void> syncSpotMarkers(List<Spot> spots) async {
    final NaverMapController? controller = _mapController;
    if (controller == null) {
      return;
    }

    final Set<int> nextSpotIds = spots.map((Spot spot) => spot.spotId).toSet();
    final List<String> markerIdsToRemove = _spotMarkers.keys
        .where((String markerId) {
          final int? spotId = _parseSpotId(markerId);
          return spotId == null || !nextSpotIds.contains(spotId);
        })
        .toList();

    for (final String markerId in markerIdsToRemove) {
      final NMarker? marker = _spotMarkers.remove(markerId);
      if (marker != null) {
        await controller.deleteOverlay(marker.info);
      }
    }

    for (final Spot spot in spots) {
      if (!_hasValidCoordinate(spot.latitude, spot.longitude)) {
        continue;
      }

      final String markerId = _spotMarkerId(spot.spotId);
      final NLatLng position = NLatLng(spot.latitude, spot.longitude);
      final NOverlayCaption caption = NOverlayCaption(
        text: spot.name,
        color: FigmaColors.white,
        haloColor: FigmaColors.black,
      );

      final NMarker? existing = _spotMarkers[markerId];
      if (existing != null) {
        existing
          ..setPosition(position)
          ..setCaption(caption);
        continue;
      }

      final NMarker marker = NMarker(
        id: markerId,
        position: position,
        iconTintColor: FigmaColors.primary100,
        caption: caption,
      );

      final int spotId = spot.spotId;
      marker.setOnTapListener((NMarker _) {
        onSpotMarkerTap?.call(spotId);
      });

      await controller.addOverlay(marker);
      _spotMarkers[markerId] = marker;
    }
  }

  int? _parseSpotId(String markerId) =>
      int.tryParse(markerId.replaceFirst('spot_', ''));

  String _spotMarkerId(int spotId) => 'spot_$spotId';

  bool _hasValidCoordinate(double latitude, double longitude) {
    if (latitude == 0 && longitude == 0) {
      return false;
    }
    if (latitude < -90 || latitude > 90) {
      return false;
    }
    if (longitude < -180 || longitude > 180) {
      return false;
    }
    return true;
  }

  Future<void> _clearSpotMarkers() async {
    final NaverMapController? controller = _mapController;
    for (final NMarker marker in _spotMarkers.values) {
      if (controller != null) {
        await controller.deleteOverlay(marker.info);
      }
    }
    _spotMarkers.clear();
  }

  Future<void> _moveCameraTo(NLatLng target) async {
    final NaverMapController? controller = _mapController;
    if (controller == null) {
      return;
    }

    final NCameraUpdate update = NCameraUpdate.scrollAndZoomTo(
      target: target,
      zoom: _cameraZoom,
    )..setPivot(_locationPivot);

    await controller.updateCamera(update);
  }

  @override
  void dispose() {
    unawaited(_positionSubscription?.cancel());
    unawaited(_clearSpotMarkers());
    _positionSubscription = null;
    _mapController = null;
    _locationOverlay = null;
    _lastPosition = null;
    onSpotMarkerTap = null;
    super.dispose();
  }
}
