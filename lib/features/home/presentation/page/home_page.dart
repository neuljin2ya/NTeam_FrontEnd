import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_naver_map/flutter_naver_map.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:geolocator/geolocator.dart';
import 'package:go_router/go_router.dart';
import '../../../../common/app_input_field.dart';
import '../../../../common/app_navigation_bar.dart';
import '../../../../config/theme/figma_colors.dart';
import '../../../../domain/maps/entity/map_location.dart';
import '../../../../router/app_router.dart';
import '../../../../router/route_navigation.dart';
import '../../../../router/router_location_provider.dart';
import '../util/home_map_location_service.dart';
import '../viewmodel/home_ui_model.dart';
import '../viewmodel/home_view_model.dart';
import '../widget/home_bottom_sheet_widget.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  static const double _minSheetSizeRatio = 0.3;
  static const double _maxSheetSize = 0.5;
  static const Duration _sheetAnimationDuration = Duration(milliseconds: 260);

  static const String _searchIconAsset = 'assets/icons/icon_search.svg';
  static const double _searchFieldHorizontalPadding = 16;

  final DraggableScrollableController _sheetController =
      DraggableScrollableController();
  final TextEditingController _searchController = TextEditingController();
  final HomeMapLocationService _locationService = HomeMapLocationService();
  DateTime? _lastBackPressedAt;
  double _currentSheetSize = 0;
  double _minSheetSize = 0;
  double _maxSheetSizeByViewport = _maxSheetSize;

  HomeViewModel get _homeViewModel => ref.read(homeViewModelProvider.notifier);

  @override
  void initState() {
    super.initState();
    _sheetController.addListener(_onSheetSizeChanged);
    _locationService.onSpotMarkerTap = _onSpotMarkerTapped;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      unawaited(_homeViewModel.loadAllSpots());
    });
  }

  void _onSpotMarkerTapped(int spotId) {
    if (!mounted) {
      return;
    }
    context.push('${SGRoute.spotDetail.route}/$spotId');
  }

  void _syncSpotMarkersFromState(HomeUiModel homeState) {
    unawaited(_locationService.syncSpotMarkers(homeState.spots));
  }

  @override
  void dispose() {
    _searchController.dispose();
    _locationService.dispose();
    _sheetController
      ..removeListener(_onSheetSizeChanged)
      ..dispose();
    super.dispose();
  }

  Future<void> onSearchSubmitted(String query) async {
    final String trimmed = query.trim();
    FocusManager.instance.primaryFocus?.unfocus();

    if (trimmed.isEmpty) {
      await _homeViewModel.loadAllSpots();
      return;
    }

    final Position? near = _locationService.lastPosition;
    final MapLocation? location = await _homeViewModel.searchLocation(
      query: trimmed,
      nearLatitude: near?.latitude,
      nearLongitude: near?.longitude,
    );

    if (!mounted || location == null) {
      return;
    }

    final double sheetFraction = _sheetController.isAttached
        ? _sheetController.size
        : _minSheetSize;
    _locationService.setBottomOverlayFraction(sheetFraction);
    await _locationService.moveToCoordinates(
      latitude: location.latitude,
      longitude: location.longitude,
    );
    await _homeViewModel.loadSpotsForLocation(location);
  }

  void _onSheetSizeChanged() {
    if (!_sheetController.isAttached || !mounted) {
      return;
    }
    _currentSheetSize = _sheetController.size;
    _locationService.setBottomOverlayFraction(_currentSheetSize);
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
    final double sheetFraction = _sheetController.isAttached
        ? _sheetController.size
        : _minSheetSize;
    _locationService.setBottomOverlayFraction(sheetFraction);
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
    ref.listen<String>(routerLocationProvider, (String? previous, String next) {
      if (didNavigateToRoute(
        previous: previous,
        next: next,
        route: SGRoute.home.route,
      )) {
        unawaited(_homeViewModel.loadAllSpots());
      }
    });

    final HomeUiModel homeState = ref.watch(homeViewModelProvider);

    ref.listen<HomeUiModel>(homeViewModelProvider, (
      HomeUiModel? previous,
      HomeUiModel next,
    ) {
      if (previous?.spots != next.spots) {
        _syncSpotMarkersFromState(next);
      }
    });
    final bool isSpotBusy =
        homeState.isLoadingSpots || homeState.isSearchingLocation;

    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final double navBottomInset =
            AppNavigationBar.bottomInset(context);
        final double navFraction =
            navBottomInset / constraints.maxHeight.clamp(1, double.infinity);

        _minSheetSize = (_minSheetSizeRatio + navFraction).clamp(0.2, _maxSheetSize);
        _maxSheetSizeByViewport =
            (_maxSheetSize + navFraction).clamp(_minSheetSize, 1);
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
            body: ListenableBuilder(
              listenable: _locationService,
              builder: (BuildContext context, Widget? child) {
                final bool isLoadingInitialLocation =
                    _locationService.isLoadingInitialLocation;

                final double searchFieldWidth =
                    constraints.maxWidth - (_searchFieldHorizontalPadding * 2);

                return Stack(
                  fit: StackFit.expand,
                  children: <Widget>[
                    _BasicNaverMapPreview(
                      onMapReady: (NaverMapController controller) {
                        _locationService.setBottomOverlayFraction(_minSheetSize);
                        unawaited(() async {
                          await _locationService.attach(controller);
                          if (!mounted) {
                            return;
                          }
                          _syncSpotMarkersFromState(
                            ref.read(homeViewModelProvider),
                          );
                        }());
                      },
                    ),
                    Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      child: SafeArea(
                        bottom: false,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(
                            _searchFieldHorizontalPadding,
                            8,
                            _searchFieldHorizontalPadding,
                            0,
                          ),
                          child: AppInputField(
                            controller: _searchController,
                            hintText: '원하는 지역을 입력해주세요',
                            width: searchFieldWidth,
                            svgIcon: _searchIconAsset,
                            applyPrefixIconColorFilter: false,
                            textInputAction: TextInputAction.search,
                            state: isSpotBusy
                                ? AppInputFieldState.disabled
                                : AppInputFieldState.enabled,
                            onSubmitted: (String value) {
                              unawaited(onSearchSubmitted(value));
                            },
                          ),
                        ),
                      ),
                    ),
                    if (!isLoadingInitialLocation) ...<Widget>[
                      DraggableScrollableSheet(
                        controller: _sheetController,
                        initialChildSize: _minSheetSize,
                        minChildSize: _minSheetSize,
                        maxChildSize: _maxSheetSizeByViewport,
                        snap: true,
                        snapSizes: <double>[
                          _minSheetSize,
                          _maxSheetSizeByViewport,
                        ],
                        expand: false,
                        builder: (
                          BuildContext context,
                          ScrollController scrollController,
                        ) {
                          return HomeBottomSheetWidget(
                            scrollController: scrollController,
                            onHandleTap: _toggleSheetByHandle,
                            spots: homeState.spots,
                            isLoading:
                                homeState.isLoadingSpots ||
                                homeState.isSearchingLocation,
                            errorMessage: homeState.spotsErrorMessage,
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
                            bottom:
                                (constraints.maxHeight * sheetSize) + 12,
                            child: _CurrentLocationButton(
                              onTap: homeState.isSearchingLocation
                                  ? null
                                  : _moveToCurrentLocation,
                            ),
                          );
                        },
                      ),
                    ],
                    if (isLoadingInitialLocation)
                      const _HomeMapLoadingOverlay(),
                  ],
                );
              },
            ),
          ),
        );
      },
    );
  }
}

class _HomeMapLoadingOverlay extends StatelessWidget {
  const _HomeMapLoadingOverlay();

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: IgnorePointer(
        child: ColoredBox(
          color: FigmaColors.black.withValues(alpha: 0.55),
          child: const Center(
            child: CircularProgressIndicator(
              color: FigmaColors.primary200,
            ),
          ),
        ),
      ),
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

  final VoidCallback? onTap;

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
