import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../common/data/providers/backend_dio_provider.dart';
import '../../domain/repository/file_repository.dart';
import '../../domain/usecase/get_file_use_case.dart';
import '../../domain/usecase/upload_file_use_case.dart';
import '../datasources/file_rest_api.dart';
import '../datasources/remote_file_ds.dart';
import '../repository/file_repository_impl.dart';

part 'file_providers.g.dart';

@Riverpod(keepAlive: true)
FileRestApi fileRestApi(Ref ref) {
  return FileRestApi(ref.watch(backendDioProvider));
}

@Riverpod(keepAlive: true)
RemoteFileDataSource remoteFileDataSource(Ref ref) {
  return RemoteFileDataSource(ref.watch(fileRestApiProvider));
}

@Riverpod(keepAlive: true)
FileRepository fileRepository(Ref ref) {
  return FileRepositoryImpl(ref.watch(remoteFileDataSourceProvider));
}

@riverpod
UploadFileUseCase uploadFileUseCase(Ref ref) {
  return UploadFileUseCase(ref.watch(fileRepositoryProvider));
}

@riverpod
GetFileUseCase getFileUseCase(Ref ref) {
  return GetFileUseCase(ref.watch(fileRepositoryProvider));
}
