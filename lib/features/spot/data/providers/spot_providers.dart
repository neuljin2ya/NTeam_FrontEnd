import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../common/data/providers/backend_dio_provider.dart';
import '../../domain/repository/spot_repository.dart';
import '../../domain/usecase/add_spot_status_use_case.dart';
import '../../domain/usecase/create_spot_use_case.dart';
import '../../domain/usecase/get_spots_use_case.dart';
import '../datasources/remote_spot_ds.dart';
import '../datasources/spot_rest_api.dart';
import '../repository/spot_repository_impl.dart';

part 'spot_providers.g.dart';

@Riverpod(keepAlive: true)
SpotRestApi spotRestApi(Ref ref) {
  return SpotRestApi(ref.watch(backendDioProvider));
}

@Riverpod(keepAlive: true)
RemoteSpotDataSource remoteSpotDataSource(Ref ref) {
  return RemoteSpotDataSource(ref.watch(spotRestApiProvider));
}

@Riverpod(keepAlive: true)
SpotRepository spotRepository(Ref ref) {
  return SpotRepositoryImpl(ref.watch(remoteSpotDataSourceProvider));
}

@riverpod
GetSpotsUseCase getSpotsUseCase(Ref ref) {
  return GetSpotsUseCase(ref.watch(spotRepositoryProvider));
}

@riverpod
CreateSpotUseCase createSpotUseCase(Ref ref) {
  return CreateSpotUseCase(ref.watch(spotRepositoryProvider));
}

@riverpod
AddSpotStatusUseCase addSpotStatusUseCase(Ref ref) {
  return AddSpotStatusUseCase(ref.watch(spotRepositoryProvider));
}
