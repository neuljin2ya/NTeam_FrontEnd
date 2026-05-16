import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_naver_map/flutter_naver_map.dart';
import 'package:geolocator/geolocator.dart';

import '../../../../config/theme/figma_colors.dart';

/// 홈 지도에서 [Geolocator]로 위치를 받아 [NLocationOverlay]에 반영합니다.
final class HomeMapLocationService extends ChangeNotifier {
  static const double _cameraZoom = 15;

  StreamSubscription<Position>? _positionSubscription;
  NaverMapController? _mapController;
  NLocationOverlay? _locationOverlay;
  Position? _lastPosition;
  bool _isLoadingInitialLocation = true;
  double _bottomOverlayFraction = 0.4;

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
    _positionSubscription = null;
    _mapController = null;
    _locationOverlay = null;
    _lastPosition = null;
    super.dispose();
  }
}
