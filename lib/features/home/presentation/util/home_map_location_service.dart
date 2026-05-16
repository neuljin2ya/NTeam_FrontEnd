import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_naver_map/flutter_naver_map.dart';
import 'package:geolocator/geolocator.dart';

import '../../../../config/theme/figma_colors.dart';

/// 홈 지도에서 [Geolocator]로 위치를 받아 [NLocationOverlay]에 반영합니다.
final class HomeMapLocationService {
  StreamSubscription<Position>? _positionSubscription;
  NaverMapController? _mapController;
  NLocationOverlay? _locationOverlay;
  Position? _lastPosition;

  Position? get lastPosition => _lastPosition;

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
    _mapController = controller;
    _locationOverlay = controller.getLocationOverlay();
    _configureOverlay(_locationOverlay!);

    if (!await ensurePermission()) {
      return;
    }

    try {
      await _applyPosition(
        await Geolocator.getCurrentPosition(
          locationSettings: const LocationSettings(
            accuracy: LocationAccuracy.high,
          ),
        ),
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

    await controller.updateCamera(
      NCameraUpdate.scrollAndZoomTo(target: target, zoom: 15),
    );
  }

  void dispose() {
    unawaited(_positionSubscription?.cancel());
    _positionSubscription = null;
    _mapController = null;
    _locationOverlay = null;
    _lastPosition = null;
  }
}
