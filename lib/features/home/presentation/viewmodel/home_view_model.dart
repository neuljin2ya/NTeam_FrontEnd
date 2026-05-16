import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../common/entity/api_response.dart';
import '../../../../data/providers/naver_maps_providers.dart';
import '../../../../domain/maps/entity/map_location.dart';
import '../../../../domain/maps/entity/search_locations_query.dart';
import '../../../../domain/maps/exception/maps_exception.dart';
import '../../../spot/data/providers/spot_providers.dart';
import '../../../spot/domain/entity/get_spots_query.dart';
import '../../../spot/domain/entity/spot.dart';
import '../util/home_spot_query_mapper.dart';
import 'home_ui_model.dart';

part 'home_view_model.g.dart';

@riverpod
class HomeViewModel extends _$HomeViewModel {
  @override
  HomeUiModel build() {
    return const HomeUiModel();
  }

  /// 주소 필터 없이 전체 스팟을 조회합니다 (홈 최초 진입·필터 해제).
  Future<void> loadAllSpots() async {
    state = state.copyWith(isLoadingSpots: true, spotsErrorMessage: null);
    await _fetchSpots(const GetSpotsQuery());
  }

  Future<MapLocation?> searchLocation({
    required String query,
    double? nearLatitude,
    double? nearLongitude,
  }) async {
    final String trimmed = query.trim();
    if (trimmed.isEmpty) {
      return null;
    }

    state = state.copyWith(
      isSearchingLocation: true,
      spotsErrorMessage: null,
    );

    try {
      final List<MapLocation> results =
          await ref.read(searchLocationsUseCaseProvider).call(
                SearchLocationsQuery(
                  query: trimmed,
                  nearLatitude: nearLatitude,
                  nearLongitude: nearLongitude,
                  count: 1,
                ),
              );

      if (results.isEmpty) {
        state = state.copyWith(
          isSearchingLocation: false,
          spotsErrorMessage: '검색 결과가 없습니다. 주소·장소명을 확인해 주세요.',
        );
        return null;
      }

      state = state.copyWith(isSearchingLocation: false);
      return results.first;
    } on MapsException catch (e) {
      state = state.copyWith(
        isSearchingLocation: false,
        spotsErrorMessage: e.message,
      );
      return null;
    } catch (_) {
      state = state.copyWith(
        isSearchingLocation: false,
        spotsErrorMessage: '지역 검색 중 오류가 발생했습니다.',
      );
      return null;
    }
  }

  Future<void> loadSpotsForLocation(MapLocation location) async {
    state = state.copyWith(isLoadingSpots: true, spotsErrorMessage: null);
    await _fetchSpots(HomeSpotQueryMapper.fromMapLocation(location));
  }

  Future<void> _fetchSpots(GetSpotsQuery query) async {
    try {
      final ApiResponse<List<Spot>> response =
          await ref.read(getSpotsUseCaseProvider).call(query);

      if (_isSuccess(response.code)) {
        state = state.copyWith(
          isLoadingSpots: false,
          spots: response.data ?? <Spot>[],
          spotsErrorMessage: null,
        );
        return;
      }

      state = state.copyWith(
        isLoadingSpots: false,
        spots: <Spot>[],
        spotsErrorMessage: response.message,
      );
    } catch (e) {
      state = state.copyWith(
        isLoadingSpots: false,
        spots: <Spot>[],
        spotsErrorMessage: '스팟 목록을 불러오지 못했습니다.',
      );
    }
  }

  bool _isSuccess(String code) =>
      code.startsWith('SPOT200') || code.startsWith('COMMON200');
}
