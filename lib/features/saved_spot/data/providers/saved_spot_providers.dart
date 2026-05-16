import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../common/data/providers/backend_dio_provider.dart';
import '../../domain/repository/saved_spot_repository.dart';
import '../../domain/usecase/get_saved_spots_use_case.dart';
import '../../domain/usecase/save_spot_use_case.dart';
import '../datasources/remote_saved_spot_ds.dart';
import '../datasources/saved_spot_rest_api.dart';
import '../repository/saved_spot_repository_impl.dart';

part 'saved_spot_providers.g.dart';

@Riverpod(keepAlive: true)
SavedSpotRestApi savedSpotRestApi(Ref ref) {
  return SavedSpotRestApi(ref.watch(backendDioProvider));
}

@Riverpod(keepAlive: true)
RemoteSavedSpotDataSource remoteSavedSpotDataSource(Ref ref) {
  return RemoteSavedSpotDataSource(ref.watch(savedSpotRestApiProvider));
}

@Riverpod(keepAlive: true)
SavedSpotRepository savedSpotRepository(Ref ref) {
  return SavedSpotRepositoryImpl(ref.watch(remoteSavedSpotDataSourceProvider));
}

@riverpod
GetSavedSpotsUseCase getSavedSpotsUseCase(Ref ref) {
  return GetSavedSpotsUseCase(ref.watch(savedSpotRepositoryProvider));
}

@riverpod
SaveSpotUseCase saveSpotUseCase(Ref ref) {
  return SaveSpotUseCase(ref.watch(savedSpotRepositoryProvider));
}
