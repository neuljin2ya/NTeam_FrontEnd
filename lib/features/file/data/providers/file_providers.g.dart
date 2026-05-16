// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(fileRestApi)
final fileRestApiProvider = FileRestApiProvider._();

final class FileRestApiProvider
    extends $FunctionalProvider<FileRestApi, FileRestApi, FileRestApi>
    with $Provider<FileRestApi> {
  FileRestApiProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'fileRestApiProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$fileRestApiHash();

  @$internal
  @override
  $ProviderElement<FileRestApi> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  FileRestApi create(Ref ref) {
    return fileRestApi(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(FileRestApi value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<FileRestApi>(value),
    );
  }
}

String _$fileRestApiHash() => r'd8b4d98a6595311b5574187b443d6a110bd16408';

@ProviderFor(remoteFileDataSource)
final remoteFileDataSourceProvider = RemoteFileDataSourceProvider._();

final class RemoteFileDataSourceProvider extends $FunctionalProvider<
    RemoteFileDataSource,
    RemoteFileDataSource,
    RemoteFileDataSource> with $Provider<RemoteFileDataSource> {
  RemoteFileDataSourceProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'remoteFileDataSourceProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$remoteFileDataSourceHash();

  @$internal
  @override
  $ProviderElement<RemoteFileDataSource> $createElement(
          $ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  RemoteFileDataSource create(Ref ref) {
    return remoteFileDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(RemoteFileDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<RemoteFileDataSource>(value),
    );
  }
}

String _$remoteFileDataSourceHash() =>
    r'addef9ab33b18609759dd82cd5034fcfc1d71da0';

@ProviderFor(fileRepository)
final fileRepositoryProvider = FileRepositoryProvider._();

final class FileRepositoryProvider
    extends $FunctionalProvider<FileRepository, FileRepository, FileRepository>
    with $Provider<FileRepository> {
  FileRepositoryProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'fileRepositoryProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$fileRepositoryHash();

  @$internal
  @override
  $ProviderElement<FileRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  FileRepository create(Ref ref) {
    return fileRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(FileRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<FileRepository>(value),
    );
  }
}

String _$fileRepositoryHash() => r'bbfed81009722109486c234c838d08a9bc42c15f';

@ProviderFor(uploadFileUseCase)
final uploadFileUseCaseProvider = UploadFileUseCaseProvider._();

final class UploadFileUseCaseProvider extends $FunctionalProvider<
    UploadFileUseCase,
    UploadFileUseCase,
    UploadFileUseCase> with $Provider<UploadFileUseCase> {
  UploadFileUseCaseProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'uploadFileUseCaseProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$uploadFileUseCaseHash();

  @$internal
  @override
  $ProviderElement<UploadFileUseCase> $createElement(
          $ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  UploadFileUseCase create(Ref ref) {
    return uploadFileUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(UploadFileUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<UploadFileUseCase>(value),
    );
  }
}

String _$uploadFileUseCaseHash() => r'7a83c6c17c1c3ef5f8cd06811eb67a5d04384ba3';

@ProviderFor(getFileUseCase)
final getFileUseCaseProvider = GetFileUseCaseProvider._();

final class GetFileUseCaseProvider
    extends $FunctionalProvider<GetFileUseCase, GetFileUseCase, GetFileUseCase>
    with $Provider<GetFileUseCase> {
  GetFileUseCaseProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'getFileUseCaseProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$getFileUseCaseHash();

  @$internal
  @override
  $ProviderElement<GetFileUseCase> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  GetFileUseCase create(Ref ref) {
    return getFileUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetFileUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetFileUseCase>(value),
    );
  }
}

String _$getFileUseCaseHash() => r'a39e5aa82da38d57565d2b7f215e90b32259e1c0';
