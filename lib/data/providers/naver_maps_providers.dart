import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/maps/repository/maps_repository.dart';
import '../../domain/maps/usecase/reverse_geocode_use_case.dart';
import '../../domain/maps/usecase/search_locations_use_case.dart';
import '../datasources/naver_maps_http_client.dart';
import '../datasources/remote_naver_geocode_ds.dart';
import '../datasources/remote_naver_local_search_ds.dart';
import '../datasources/remote_naver_reverse_geocode_ds.dart';
import '../repository/maps_repository_impl.dart';

part 'naver_maps_providers.g.dart';

@Riverpod(keepAlive: true)
Dio naverMapsDio(Ref ref) {
  return Dio(
    BaseOptions(
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
    ),
  );
}

@Riverpod(keepAlive: true)
NaverMapsHttpClient naverMapsHttpClient(Ref ref) {
  return NaverMapsHttpClient(dio: ref.watch(naverMapsDioProvider));
}

@Riverpod(keepAlive: true)
RemoteNaverGeocodeDataSource remoteNaverGeocodeDataSource(Ref ref) {
  return RemoteNaverGeocodeDataSource(ref.watch(naverMapsHttpClientProvider));
}

@Riverpod(keepAlive: true)
RemoteNaverReverseGeocodeDataSource remoteNaverReverseGeocodeDataSource(
  Ref ref,
) {
  return RemoteNaverReverseGeocodeDataSource(
    ref.watch(naverMapsHttpClientProvider),
  );
}

@Riverpod(keepAlive: true)
RemoteNaverLocalSearchDataSource remoteNaverLocalSearchDataSource(Ref ref) {
  return RemoteNaverLocalSearchDataSource(
    ref.watch(naverMapsHttpClientProvider),
  );
}

@Riverpod(keepAlive: true)
MapsRepository mapsRepository(Ref ref) {
  return MapsRepositoryImpl(
    geocodeDataSource: ref.watch(remoteNaverGeocodeDataSourceProvider),
    reverseGeocodeDataSource:
        ref.watch(remoteNaverReverseGeocodeDataSourceProvider),
    localSearchDataSource: ref.watch(remoteNaverLocalSearchDataSourceProvider),
  );
}

@riverpod
SearchLocationsUseCase searchLocationsUseCase(Ref ref) {
  return SearchLocationsUseCase(ref.watch(mapsRepositoryProvider));
}

@riverpod
ReverseGeocodeUseCase reverseGeocodeUseCase(Ref ref) {
  return ReverseGeocodeUseCase(ref.watch(mapsRepositoryProvider));
}
