import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../common/data/providers/backend_dio_provider.dart';
import '../../domain/repository/video_repository.dart';
import '../../domain/usecase/create_video_use_case.dart';
import '../../domain/usecase/get_videos_use_case.dart';
import '../datasources/remote_video_ds.dart';
import '../datasources/video_rest_api.dart';
import '../repository/video_repository_impl.dart';

part 'video_providers.g.dart';

@Riverpod(keepAlive: true)
VideoRestApi videoRestApi(Ref ref) {
  return VideoRestApi(ref.watch(backendDioProvider));
}

@Riverpod(keepAlive: true)
RemoteVideoDataSource remoteVideoDataSource(Ref ref) {
  return RemoteVideoDataSource(ref.watch(videoRestApiProvider));
}

@Riverpod(keepAlive: true)
VideoRepository videoRepository(Ref ref) {
  return VideoRepositoryImpl(ref.watch(remoteVideoDataSourceProvider));
}

@riverpod
GetVideosUseCase getVideosUseCase(Ref ref) {
  return GetVideosUseCase(ref.watch(videoRepositoryProvider));
}

@riverpod
CreateVideoUseCase createVideoUseCase(Ref ref) {
  return CreateVideoUseCase(ref.watch(videoRepositoryProvider));
}
