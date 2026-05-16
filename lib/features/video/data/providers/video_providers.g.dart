// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(videoRestApi)
final videoRestApiProvider = VideoRestApiProvider._();

final class VideoRestApiProvider
    extends $FunctionalProvider<VideoRestApi, VideoRestApi, VideoRestApi>
    with $Provider<VideoRestApi> {
  VideoRestApiProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'videoRestApiProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$videoRestApiHash();

  @$internal
  @override
  $ProviderElement<VideoRestApi> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  VideoRestApi create(Ref ref) {
    return videoRestApi(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(VideoRestApi value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<VideoRestApi>(value),
    );
  }
}

String _$videoRestApiHash() => r'afbe68ea4ab8809d2ccd8d27b7c9a73fc5dcd699';

@ProviderFor(remoteVideoDataSource)
final remoteVideoDataSourceProvider = RemoteVideoDataSourceProvider._();

final class RemoteVideoDataSourceProvider extends $FunctionalProvider<
    RemoteVideoDataSource,
    RemoteVideoDataSource,
    RemoteVideoDataSource> with $Provider<RemoteVideoDataSource> {
  RemoteVideoDataSourceProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'remoteVideoDataSourceProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$remoteVideoDataSourceHash();

  @$internal
  @override
  $ProviderElement<RemoteVideoDataSource> $createElement(
          $ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  RemoteVideoDataSource create(Ref ref) {
    return remoteVideoDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(RemoteVideoDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<RemoteVideoDataSource>(value),
    );
  }
}

String _$remoteVideoDataSourceHash() =>
    r'd0f4998e55b5f12e736cfbf3038d4bdb5d52b307';

@ProviderFor(videoRepository)
final videoRepositoryProvider = VideoRepositoryProvider._();

final class VideoRepositoryProvider extends $FunctionalProvider<VideoRepository,
    VideoRepository, VideoRepository> with $Provider<VideoRepository> {
  VideoRepositoryProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'videoRepositoryProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$videoRepositoryHash();

  @$internal
  @override
  $ProviderElement<VideoRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  VideoRepository create(Ref ref) {
    return videoRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(VideoRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<VideoRepository>(value),
    );
  }
}

String _$videoRepositoryHash() => r'1746e84f0803abcfc3956f532da3d46c2f2e727c';

@ProviderFor(getVideosUseCase)
final getVideosUseCaseProvider = GetVideosUseCaseProvider._();

final class GetVideosUseCaseProvider extends $FunctionalProvider<
    GetVideosUseCase,
    GetVideosUseCase,
    GetVideosUseCase> with $Provider<GetVideosUseCase> {
  GetVideosUseCaseProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'getVideosUseCaseProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$getVideosUseCaseHash();

  @$internal
  @override
  $ProviderElement<GetVideosUseCase> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  GetVideosUseCase create(Ref ref) {
    return getVideosUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetVideosUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetVideosUseCase>(value),
    );
  }
}

String _$getVideosUseCaseHash() => r'e2f44a88da94cd7d8845b8b55403a81c316c0262';

@ProviderFor(createVideoUseCase)
final createVideoUseCaseProvider = CreateVideoUseCaseProvider._();

final class CreateVideoUseCaseProvider extends $FunctionalProvider<
    CreateVideoUseCase,
    CreateVideoUseCase,
    CreateVideoUseCase> with $Provider<CreateVideoUseCase> {
  CreateVideoUseCaseProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'createVideoUseCaseProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$createVideoUseCaseHash();

  @$internal
  @override
  $ProviderElement<CreateVideoUseCase> $createElement(
          $ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  CreateVideoUseCase create(Ref ref) {
    return createVideoUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CreateVideoUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CreateVideoUseCase>(value),
    );
  }
}

String _$createVideoUseCaseHash() =>
    r'c10561701f2ea6369869da34ca056b6043c1ada9';
