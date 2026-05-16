import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../data/providers/naver_maps_providers.dart';
import '../../../../domain/maps/entity/map_location.dart';
import '../../../../domain/maps/entity/search_locations_query.dart';
import '../../../../domain/maps/exception/maps_exception.dart';
import 'new_spot_address_picker_ui_model.dart';

part 'new_spot_address_picker_view_model.g.dart';

@riverpod
class NewSpotAddressPickerViewModel extends _$NewSpotAddressPickerViewModel {
  @override
  NewSpotAddressPickerUiModel build() {
    return const NewSpotAddressPickerUiModel();
  }

  void setInitializingLocation(bool value) {
    state = state.copyWith(isInitializingLocation: value, errorMessage: null);
  }

  Future<List<MapLocation>> searchLocations({
    required String query,
    double? nearLatitude,
    double? nearLongitude,
    int count = 30,
  }) async {
    state = state.copyWith(isLoading: true, errorMessage: null);

    try {
      final List<MapLocation> results =
          await ref.read(searchLocationsUseCaseProvider).call(
                SearchLocationsQuery(
                  query: query,
                  nearLatitude: nearLatitude,
                  nearLongitude: nearLongitude,
                  count: count,
                ),
              );

      if (results.isEmpty) {
        state = state.copyWith(
          isLoading: false,
          errorMessage: '검색 결과가 없습니다. 주소·장소명을 확인해 주세요.',
        );
        return <MapLocation>[];
      }

      state = state.copyWith(isLoading: false);
      return results;
    } on MapsException catch (e) {
      state = state.copyWith(isLoading: false, errorMessage: e.message);
      return <MapLocation>[];
    } catch (_) {
      state = state.copyWith(
        isLoading: false,
        errorMessage: '검색 중 오류가 발생했습니다.',
      );
      return <MapLocation>[];
    }
  }

  void selectLocation(MapLocation location) {
    state = state.copyWith(
      selectedLocation: location,
      errorMessage: null,
    );
  }

  Future<void> reverseGeocodeAt({
    required double latitude,
    required double longitude,
  }) async {
    state = state.copyWith(isLoading: true, errorMessage: null);

    try {
      final MapLocation location =
          await ref.read(reverseGeocodeUseCaseProvider).call(
                latitude: latitude,
                longitude: longitude,
              );
      state = state.copyWith(
        selectedLocation: location,
        isLoading: false,
      );
    } on MapsException catch (e) {
      state = state.copyWith(isLoading: false, errorMessage: e.message);
    } catch (_) {
      state = state.copyWith(
        isLoading: false,
        errorMessage: '주소 조회 중 오류가 발생했습니다.',
      );
    }
  }
}
