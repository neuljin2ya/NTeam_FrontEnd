import 'package:flutter/material.dart';
import 'package:flutter_naver_map/flutter_naver_map.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../config/theme/app_text_styles.dart';
import '../domain/maps/entity/map_location.dart';
import 'map_location_extensions.dart';
import '../features/home/presentation/viewmodel/map_location_picker_ui_model.dart';
import '../features/home/presentation/viewmodel/map_location_picker_view_model.dart';

/// 주소·장소명 검색 또는 지도 드래그로 위치를 선택하는 Dev 화면.
class MapLocationPickerPage extends ConsumerStatefulWidget {
  const MapLocationPickerPage({super.key});

  @override
  ConsumerState<MapLocationPickerPage> createState() =>
      _MapLocationPickerPageState();
}

class _MapLocationPickerPageState extends ConsumerState<MapLocationPickerPage> {
  static const NLatLng _initialTarget = NLatLng(37.5666, 126.979);

  final TextEditingController _addressController = TextEditingController();

  NaverMapController? _mapController;
  bool _ignoreNextCameraIdle = false;

  @override
  void dispose() {
    _addressController.dispose();
    super.dispose();
  }

  MapLocationPickerViewModel get _viewModel =>
      ref.read(mapLocationPickerViewModelProvider.notifier);

  Future<NLatLng?> _currentMapCenter() async {
    final NaverMapController? controller = _mapController;
    if (controller == null) {
      return null;
    }
    final NCameraPosition camera = await controller.getCameraPosition();
    return camera.target;
  }

  Future<void> _searchByAddress() async {
    final NLatLng? near = await _currentMapCenter();
    final List<MapLocation> results = await _viewModel.searchLocations(
      query: _addressController.text,
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
    await _moveMapTo(result.latLng);
  }

  Future<MapLocation?> _pickSearchResult(List<MapLocation> results) {
    return showModalBottomSheet<MapLocation>(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
                child: Text(
                  '검색 결과 ${results.length}건',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
              Flexible(
                child: ListView.separated(
                  shrinkWrap: true,
                  itemCount: results.length,
                  separatorBuilder: (_, __) => const Divider(height: 1),
                  itemBuilder: (BuildContext context, int index) {
                    final MapLocation item = results[index];
                    final String? distanceLabel = item.distanceMeters != null
                        ? '${item.distanceMeters!.round()}m'
                        : null;
                    return ListTile(
                      title: Text(
                        item.buildingName.isNotEmpty
                            ? item.buildingName
                            : item.fullAddress,
                      ),
                      subtitle: Text(
                        [
                          if (item.buildingName.isNotEmpty) item.fullAddress,
                          if (item.buildingName.isEmpty) item.roadAddress,
                          if (distanceLabel != null) distanceLabel,
                        ].join(' · '),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      onTap: () => Navigator.pop(context, item),
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
    final NaverMapController? controller = _mapController;
    if (controller == null) {
      return;
    }

    final NCameraPosition camera = await controller.getCameraPosition();
    final NLatLng target = camera.target;

    await _viewModel.reverseGeocodeAt(
      latitude: target.latitude,
      longitude: target.longitude,
    );
  }

  Future<void> _moveMapTo(NLatLng target) async {
    final NaverMapController? controller = _mapController;
    if (controller == null) {
      return;
    }
    _ignoreNextCameraIdle = true;
    await controller.updateCamera(
      NCameraUpdate.scrollAndZoomTo(target: target, zoom: 16),
    );
  }

  void _onCameraIdle() {
    if (_ignoreNextCameraIdle) {
      _ignoreNextCameraIdle = false;
      return;
    }
    _resolveMapCenter();
  }

  @override
  Widget build(BuildContext context) {
    final MapLocationPickerUiModel uiState =
        ref.watch(mapLocationPickerViewModelProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('위치 · 주소 선택'),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    controller: _addressController,
                    decoration: const InputDecoration(
                      hintText: '주소 또는 장소명 (예: 부산대학교)',
                      border: OutlineInputBorder(),
                      isDense: true,
                    ),
                    textInputAction: TextInputAction.search,
                    onSubmitted: (_) => _searchByAddress(),
                  ),
                ),
                const SizedBox(width: 8),
                FilledButton(
                  onPressed: uiState.isLoading ? null : _searchByAddress,
                  child: const Text('검색'),
                ),
              ],
            ),
          ),
          Expanded(
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                NaverMap(
                  options: const NaverMapViewOptions(
                    initialCameraPosition: NCameraPosition(
                      target: _initialTarget,
                      zoom: 14,
                    ),
                    mapType: NMapType.basic,
                  ),
                  onMapReady: (NaverMapController controller) {
                    _mapController = controller;
                  },
                  onCameraIdle: _onCameraIdle,
                ),
                const IgnorePointer(
                  child: Icon(
                    Icons.location_on,
                    size: 48,
                    color: Colors.red,
                  ),
                ),
                if (uiState.isLoading)
                  const Positioned(
                    top: 12,
                    child: Card(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 8,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            SizedBox(
                              width: 18,
                              height: 18,
                              child: CircularProgressIndicator(strokeWidth: 2),
                            ),
                            SizedBox(width: 12),
                            Text('주소 조회 중…'),
                          ],
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
          _LocationResultPanel(
            location: uiState.selectedLocation,
            errorMessage: uiState.errorMessage,
          ),
        ],
      ),
    );
  }
}

class _LocationResultPanel extends StatelessWidget {
  const _LocationResultPanel({
    required this.location,
    required this.errorMessage,
  });

  final MapLocation? location;
  final String? errorMessage;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 8,
      child: SafeArea(
        top: false,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                '지도를 드래그하면 가운데 핀 위치의 좌표·주소가 갱신됩니다.',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const SizedBox(height: 12),
              if (errorMessage != null)
                Text(
                  errorMessage!,
                  style: AppTextStyles.bodyMedium.copyWith(
                    color: Theme.of(context).colorScheme.error,
                  ),
                ),
              if (location != null) ...<Widget>[
                _ResultRow(label: '위도', value: location!.latitude.toString()),
                _ResultRow(
                  label: '경도',
                  value: location!.longitude.toString(),
                ),
                _ResultRow(label: '건물명', value: location!.buildingName),
                if (location!.distanceMeters != null)
                  _ResultRow(
                    label: '중심 거리',
                    value: '${location!.distanceMeters!.round()}m',
                  ),
                _ResultRow(label: '도로명', value: location!.roadAddress),
                _ResultRow(label: '지번', value: location!.jibunAddress),
                _ResultRow(label: '전체 주소', value: location!.fullAddress),
              ] else if (errorMessage == null)
                Text(
                  '주소·장소명을 검색하거나 지도를 움직여 주세요.',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ResultRow extends StatelessWidget {
  const _ResultRow({required this.label, required this.value});

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    if (value.isEmpty) {
      return const SizedBox.shrink();
    }
    return Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: RichText(
        text: TextSpan(
          style: Theme.of(context).textTheme.bodyMedium,
          children: <TextSpan>[
            TextSpan(
              text: '$label: ',
              style: AppTextStyles.bodyMedium.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            TextSpan(text: value),
          ],
        ),
      ),
    );
  }
}
