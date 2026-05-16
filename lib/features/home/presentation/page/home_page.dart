import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_naver_map/flutter_naver_map.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../config/theme/figma_colors.dart';
import '../util/home_map_location_service.dart';
import '../widget/home_bottom_sheet_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const double _minSheetSizeRatio = 0.4;
  static const double _maxSheetSize = 0.85;
  static const Duration _sheetAnimationDuration = Duration(milliseconds: 260);

  final DraggableScrollableController _sheetController =
      DraggableScrollableController();
  final HomeMapLocationService _locationService = HomeMapLocationService();
  DateTime? _lastBackPressedAt;
  double _currentSheetSize = 0;
  double _minSheetSize = 0;
  double _maxSheetSizeByViewport = _maxSheetSize;

  @override
  void initState() {
    super.initState();
    _sheetController.addListener(_onSheetSizeChanged);
  }

  @override
  void dispose() {
    _locationService.dispose();
    _sheetController
      ..removeListener(_onSheetSizeChanged)
      ..dispose();
    super.dispose();
  }

  void _onSheetSizeChanged() {
    if (!_sheetController.isAttached) {
      return;
    }
    _currentSheetSize = _sheetController.size;
  }

  Future<void> _toggleSheetByHandle() async {
    if (!_sheetController.isAttached) {
      return;
    }

    final double midpoint = (_minSheetSize + _maxSheetSizeByViewport) / 2;
    final double targetSize =
        _currentSheetSize >= midpoint ? _minSheetSize : _maxSheetSizeByViewport;

    await _sheetController.animateTo(
      targetSize,
      duration: _sheetAnimationDuration,
      curve: Curves.easeOutCubic,
    );
  }

  Future<void> _moveToCurrentLocation() async {
    await _locationService.moveToCurrentLocation();
  }

  Future<void> _handleBackPressed() async {
    final bool isAndroid = Theme.of(context).platform == TargetPlatform.android;
    if (!isAndroid) {
      final NavigatorState navigator = Navigator.of(context);
      if (navigator.canPop()) {
        navigator.pop();
      }
      return;
    }

    if (_sheetController.isAttached) {
      final bool isAtMax = _currentSheetSize >= _maxSheetSizeByViewport - 0.01;
      final bool isAboveMin = _currentSheetSize > _minSheetSize + 0.01;

      if (isAtMax || isAboveMin) {
        await _sheetController.animateTo(
          _minSheetSize,
          duration: _sheetAnimationDuration,
          curve: Curves.easeOutCubic,
        );
        return;
      }
    }

    final DateTime now = DateTime.now();
    final DateTime? lastBackPressedAt = _lastBackPressedAt;
    final bool isDoubleBack = lastBackPressedAt != null &&
        now.difference(lastBackPressedAt) < const Duration(seconds: 2);

    if (isDoubleBack) {
      await SystemNavigator.pop();
      return;
    }

    _lastBackPressedAt = now;
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('뒤로가기를 한 번 더 누르면 종료됩니다.')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        _minSheetSize = _minSheetSizeRatio.clamp(0.2, _maxSheetSize);
        _maxSheetSizeByViewport = _maxSheetSize;
        if (_currentSheetSize == 0) {
          _currentSheetSize = _minSheetSize;
        }

        return PopScope(
          canPop: false,
          onPopInvokedWithResult: (bool didPop, Object? result) async {
            if (didPop) {
              return;
            }
            await _handleBackPressed();
          },
          child: Scaffold(
            body: Stack(
              fit: StackFit.expand,
              children: <Widget>[
                _BasicNaverMapPreview(
                  onMapReady: (NaverMapController controller) {
                    unawaited(_locationService.attach(controller));
                  },
                ),
                DraggableScrollableSheet(
                  controller: _sheetController,
                  initialChildSize: _minSheetSize,
                  minChildSize: _minSheetSize,
                  maxChildSize: _maxSheetSizeByViewport,
                  snap: true,
                  snapSizes: <double>[_minSheetSize, _maxSheetSizeByViewport],
                  expand: false,
                  builder: (
                    BuildContext context,
                    ScrollController scrollController,
                  ) {
                    return HomeBottomSheetWidget(
                      scrollController: scrollController,
                      onHandleTap: _toggleSheetByHandle,
                    );
                  },
                ),
                ListenableBuilder(
                  listenable: _sheetController,
                  builder: (BuildContext context, Widget? child) {
                    final double sheetSize = _sheetController.isAttached
                        ? _sheetController.size
                        : _minSheetSize;
                    return Positioned(
                      right: 16,
                      bottom: (constraints.maxHeight * sheetSize) + 12,
                      child: _CurrentLocationButton(
                        onTap: _moveToCurrentLocation,
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class _BasicNaverMapPreview extends StatelessWidget {
  const _BasicNaverMapPreview({required this.onMapReady});

  static const double _initialZoom = 15;
  final ValueChanged<NaverMapController> onMapReady;

  @override
  Widget build(BuildContext context) {
    return NaverMap(
      options: const NaverMapViewOptions(
        initialCameraPosition: NCameraPosition(
          target: NLatLng(37.5666, 126.979),
          zoom: _initialZoom,
        ),
      ),
      onMapReady: onMapReady,
    );
  }
}

class _CurrentLocationButton extends StatelessWidget {
  const _CurrentLocationButton({required this.onTap});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(24),
        child: Ink(
          width: 48,
          height: 48,
          decoration: BoxDecoration(
            color: FigmaColors.black,
            shape: BoxShape.circle,
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.2),
                blurRadius: 12,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Center(
            child: SvgPicture.asset(
              'assets/icons/icon_now_location.svg',
              width: 24,
              height: 24,
            ),
          ),
        ),
      ),
    );
  }
}
