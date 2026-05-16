import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../common/data/providers/backend_dio_provider.dart';
import '../../domain/repository/login_repository.dart';
import '../../domain/usecase/get_auth_me_use_case.dart';
import '../../domain/usecase/login_use_case.dart';
import '../datasources/login_rest_api.dart';
import '../datasources/remote_login_ds.dart';
import '../repository/login_repository_impl.dart';

part 'login_providers.g.dart';

@Riverpod(keepAlive: true)
LoginRestApi loginRestApi(Ref ref) {
  return LoginRestApi(ref.watch(backendDioProvider));
}

@Riverpod(keepAlive: true)
RemoteLoginDataSource remoteLoginDataSource(Ref ref) {
  return RemoteLoginDataSource(ref.watch(loginRestApiProvider));
}

@Riverpod(keepAlive: true)
LoginRepository loginRepository(Ref ref) {
  return LoginRepositoryImpl(ref.watch(remoteLoginDataSourceProvider));
}

@riverpod
GetAuthMeUseCase getAuthMeUseCase(Ref ref) {
  return GetAuthMeUseCase(ref.watch(loginRepositoryProvider));
}

@riverpod
LoginUseCase loginUseCase(Ref ref) {
  return LoginUseCase(ref.watch(loginRepositoryProvider));
}
