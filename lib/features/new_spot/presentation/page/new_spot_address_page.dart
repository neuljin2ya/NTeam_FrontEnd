import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_naver_map/flutter_naver_map.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:geolocator/geolocator.dart';
import 'package:go_router/go_router.dart';

import '../../../../common/app_button.dart';
import '../../../../common/app_input_field.dart';
import '../../../../common/app_top_bar.dart';
import '../../../../config/theme/app_text_styles.dart';
import '../../../../config/theme/figma_colors.dart';
import '../../../../domain/maps/entity/map_location.dart';
import '../viewmodel/new_spot_address_picker_ui_model.dart';
import '../viewmodel/new_spot_address_picker_view_model.dart';

/// Figma `113:2888` — 지도에서 핀 위치로 주소를 선택합니다. 초기 카메라는 내 위치입니다.
class NewSpotAddressPage extends ConsumerStatefulWidget {
  const NewSpotAddressPage({super.key});

  @override
  ConsumerState<NewSpotAddressPage> createState() => _NewSpotAddressPageState();
}

class _NewSpotAddressPageState extends ConsumerState<NewSpotAddressPage> {
  static const NLatLng _fallbackTarget = NLatLng(37.5666, 126.979);
  static const double _mapZoom = 16;
  static const double _bottomPanelHeight = 168;

  final TextEditingController _searchController = TextEditingController();

  NaverMapController? _mapController;
  NLocationOverlay? _locationOverlay;
  Position? _lastPosition;
  bool _ignoreNextCameraIdle = false;

  NewSpotAddressPickerViewModel get _viewModel =>
      ref.read(newSpotAddressPickerViewModelProvider.notifier);

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  NPoint _cameraPivot(BuildContext context) {
    final double screenHeight = MediaQuery.sizeOf(context).height;
    final double visibleCenterY =
        (screenHeight - _bottomPanelHeight - MediaQuery.of(context).padding.bottom) / 2 / screenHeight;
    return NPoint(0.5, visibleCenterY.clamp(0.25, 0.45));
  }

  Future<NLatLng?> _currentMapCenter() async {
    final NaverMapController? controller = _mapController;
    if (controller == null) {
      return null;
    }
    final NCameraPosition camera = await controller.getCameraPosition();
    return camera.target;
  }

  Future<bool> _ensurePermission() async {
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

  void _configureLocationOverlay(NLocationOverlay overlay) {
    overlay
      ..setIconSize(const Size.square(24))
      ..setCircleRadius(20)
      ..setCircleColor(FigmaColors.primary300.withValues(alpha: 0.24))
      ..setSubAnchor(const NPoint(0.5, 1))
      ..setIsVisible(true);
  }

  Future<void> _moveMapTo(NLatLng target, {required NPoint pivot}) async {
    final NaverMapController? controller = _mapController;
    if (controller == null) {
      return;
    }
    _ignoreNextCameraIdle = true;
    final NCameraUpdate update = NCameraUpdate.scrollAndZoomTo(
      target: target,
      zoom: _mapZoom,
    )..setPivot(pivot);
    await controller.updateCamera(update);
  }

  Future<void> _applyDevicePosition(Position position) async {
    _lastPosition = position;
    final NLocationOverlay? overlay = _locationOverlay;
    if (overlay != null) {
      overlay.setPosition(NLatLng(position.latitude, position.longitude));
      final double heading = position.heading;
      if (heading >= 0) {
        overlay.setBearing(heading);
      }
    }
  }

  Future<void> _initializeAtCurrentLocation() async {
    _viewModel.setInitializingLocation(true);

    try {
      if (!await _ensurePermission()) {
        await _resolveMapCenter();
        return;
      }

      final Position position = await Geolocator.getCurrentPosition(
        locationSettings: const LocationSettings(
          accuracy: LocationAccuracy.high,
        ),
      );

      if (!mounted) {
        return;
      }

      final NPoint pivot = _cameraPivot(context);
      await _applyDevicePosition(position);
      await _moveMapTo(
        NLatLng(position.latitude, position.longitude),
        pivot: pivot,
      );
      await _viewModel.reverseGeocodeAt(
        latitude: position.latitude,
        longitude: position.longitude,
      );
    } on LocationServiceDisabledException {
      if (mounted) {
        final NPoint pivot = _cameraPivot(context);
        await _moveMapTo(_fallbackTarget, pivot: pivot);
        await _resolveMapCenter();
      }
    } on PermissionDeniedException {
      if (mounted) {
        final NPoint pivot = _cameraPivot(context);
        await _moveMapTo(_fallbackTarget, pivot: pivot);
        await _resolveMapCenter();
      }
    } catch (_) {
      if (mounted) {
        final NPoint pivot = _cameraPivot(context);
        await _moveMapTo(_fallbackTarget, pivot: pivot);
        await _resolveMapCenter();
      }
    } finally {
      _viewModel.setInitializingLocation(false);
    }
  }

  Future<void> _moveToCurrentLocation() async {
    if (!await _ensurePermission()) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('위치 권한이 필요합니다.')),
        );
      }
      return;
    }

    try {
      final Position position = _lastPosition ??
          await Geolocator.getCurrentPosition(
            locationSettings: const LocationSettings(
              accuracy: LocationAccuracy.high,
            ),
          );

      if (!mounted) {
        return;
      }

      final NPoint pivot = _cameraPivot(context);
      await _applyDevicePosition(position);
      await _moveMapTo(
        NLatLng(position.latitude, position.longitude),
        pivot: pivot,
      );
      await _viewModel.reverseGeocodeAt(
        latitude: position.latitude,
        longitude: position.longitude,
      );
    } on LocationServiceDisabledException {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('위치 서비스를 켜 주세요.')),
        );
      }
    }
  }

  Future<void> _searchByAddress() async {
    final String query = _searchController.text.trim();
    if (query.isEmpty) {
      return;
    }

    FocusManager.instance.primaryFocus?.unfocus();

    final NLatLng? near = await _currentMapCenter();
    final List<MapLocation> results = await _viewModel.searchLocations(
      query: query,
      nearLatitude: near?.latitude,
      nearLongitude: near?.longitude,
    );

    if (!mounted || results.isEmpty) {
      return;
    }

    final MapLocation result = results.length == 1
        ? results.first
        : await _pickSearchResult(results) ?? results.first;

    if (!mounted) {
      return;
    }

    _viewModel.selectLocation(result);
    final NPoint pivot = _cameraPivot(context);
    await _moveMapTo(
      NLatLng(result.latitude, result.longitude),
      pivot: pivot,
    );
    await _viewModel.reverseGeocodeAt(
      latitude: result.latitude,
      longitude: result.longitude,
    );
  }

  Future<MapLocation?> _pickSearchResult(List<MapLocation> results) {
    return showModalBottomSheet<MapLocation>(
      context: context,
      backgroundColor: FigmaColors.gray400,
      builder: (BuildContext context) {
        return SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  '검색 결과 선택',
                  style: AppTextStyles.titleLarge.copyWith(
                    color: FigmaColors.white,
                  ),
                ),
              ),
              Flexible(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: results.length,
                  itemBuilder: (BuildContext context, int index) {
                    final MapLocation item = results[index];
                    return ListTile(
                      title: Text(
                        item.fullAddress,
                        style: AppTextStyles.bodyMedium.copyWith(
                          color: FigmaColors.white,
                        ),
                      ),
                      subtitle: item.buildingName.isEmpty
                          ? null
                          : Text(
                              item.buildingName,
                              style: AppTextStyles.bodyMedium.copyWith(
                                color: FigmaColors.gray100,
                              ),
                            ),
                      onTap: () => Navigator.of(context).pop(item),
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Future<void> _resolveMapCenter() async {
    final NLatLng? center = await _currentMapCenter();
    if (center == null) {
      return;
    }
    await _viewModel.reverseGeocodeAt(
      latitude: center.latitude,
      longitude: center.longitude,
    );
  }

  void _onCameraIdle() {
    if (_ignoreNextCameraIdle) {
      _ignoreNextCameraIdle = false;
      return;
    }
    unawaited(_resolveMapCenter());
  }

  Future<void> _onMapReady(NaverMapController controller) async {
    _mapController = controller;
    _locationOverlay = controller.getLocationOverlay();
    _configureLocationOverlay(_locationOverlay!);
    await _initializeAtCurrentLocation();
  }

  void _confirmSelection() {
    final NewSpotAddressPickerUiModel uiState =
        ref.read(newSpotAddressPickerViewModelProvider);
    final MapLocation? location = uiState.selectedLocation;
    if (location == null ||
        uiState.isLoading ||
        uiState.isInitializingLocation) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('주소를 선택해 주세요.')),
      );
      return;
    }
    context.pop(location);
  }

  @override
  Widget build(BuildContext context) {
    final NewSpotAddressPickerUiModel uiState =
        ref.watch(newSpotAddressPickerViewModelProvider);
    final double searchFieldWidth = MediaQuery.sizeOf(context).width - 32;
    final bool isBusy =
        uiState.isLoading || uiState.isInitializingLocation;

    return Scaffold(
      backgroundColor: FigmaColors.black,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          NaverMap(
            options: NaverMapViewOptions(
              initialCameraPosition: NCameraPosition(
                target: _fallbackTarget,
                zoom: _mapZoom,
              ),
              mapType: NMapType.basic,
            ),
            onMapReady: _onMapReady,
            onCameraIdle: _onCameraIdle,
          ),
          IgnorePointer(
            child: Center(
              child: Padding(
                padding: EdgeInsets.only(bottom: _bottomPanelHeight / 2 + MediaQuery.of(context).padding.bottom),
                child: const Icon(
                  Icons.location_on,
                  size: 48,
                  color: FigmaColors.primary100,
                ),
              ),
            ),
          ),
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                SizedBox(height: MediaQuery.of(context).padding.top),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: AppInputField(
                    controller: _searchController,
                    hintText: '주소를 입력해주세요',
                    width: searchFieldWidth,
                    svgIcon: 'assets/icons/icon_search.svg',
                    applyPrefixIconColorFilter: false,
                    textInputAction: TextInputAction.search,
                    state: isBusy
                        ? AppInputFieldState.disabled
                        : AppInputFieldState.enabled,
                    onSubmitted: (_) => unawaited(_searchByAddress()),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: 16,
            bottom: _bottomPanelHeight + 48,
            child: _CurrentLocationButton(
              onTap: isBusy ? null : () => unawaited(_moveToCurrentLocation()),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: _AddressBottomPanel(
              uiState: uiState,
              onConfirm: _confirmSelection,
            ),
          ),
          if (uiState.isInitializingLocation)
            const _MapLoadingOverlay(),
        ],
      ),
    );
  }
}

class _AddressBottomPanel extends StatelessWidget {
  const _AddressBottomPanel({
    required this.uiState,
    required this.onConfirm,
  });

  final NewSpotAddressPickerUiModel uiState;
  final VoidCallback onConfirm;

  @override
  Widget build(BuildContext context) {
    final MapLocation? location = uiState.selectedLocation;
    final bool isBusy =
        uiState.isLoading || uiState.isInitializingLocation;

    return SafeArea(
      top: false,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16),
        decoration: const BoxDecoration(
          color: FigmaColors.black,
          borderRadius: BorderRadius.all(Radius.circular(12)),
          border: Border(
            top: BorderSide(color: FigmaColors.gray400),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              if (uiState.errorMessage != null)
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    uiState.errorMessage!,
                    style: AppTextStyles.bodyMedium.copyWith(
                      color: FigmaColors.error,
                    ),
                  ),
                ),
              if (isBusy)
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const SizedBox(
                        width: 18,
                        height: 18,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          color: FigmaColors.primary100,
                        ),
                      ),
                      const SizedBox(width: 12),
                      Text(
                        uiState.isInitializingLocation
                            ? '내 위치를 불러오는 중…'
                            : '주소 조회 중…',
                        style: AppTextStyles.bodyMedium.copyWith(
                          color: FigmaColors.gray100,
                        ),
                      ),
                    ],
                  ),
                )
              else if (location != null)
                Text(
                  location.fullAddress,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyles.bodyLarge.copyWith(
                    color: FigmaColors.white,
                  ),
                )
              else
                Text(
                  '지도를 움직여 위치를 선택해 주세요.',
                  style: AppTextStyles.bodyMedium.copyWith(
                    color: FigmaColors.gray100,
                  ),
                ),
              const SizedBox(height: 16),
              AppButton(
                text: '이 주소로 선택',
                width: double.infinity,
                onPressed: isBusy || location == null ? null : onConfirm,
              ),
            ],
          ),
        ),
      ),
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

class _MapLoadingOverlay extends StatelessWidget {
  const _MapLoadingOverlay();

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: IgnorePointer(
        child: ColoredBox(
          color: FigmaColors.black.withValues(alpha: 0.45),
          child: const Center(
            child: CircularProgressIndicator(
              color: FigmaColors.primary100,
            ),
          ),
        ),
      ),
    );
  }
}
