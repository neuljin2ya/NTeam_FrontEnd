// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_response_decoder.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(apiResponseDecoder)
final apiResponseDecoderProvider = ApiResponseDecoderProvider._();

final class ApiResponseDecoderProvider extends $FunctionalProvider<
    ApiResponseDecoder,
    ApiResponseDecoder,
    ApiResponseDecoder> with $Provider<ApiResponseDecoder> {
  ApiResponseDecoderProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'apiResponseDecoderProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$apiResponseDecoderHash();

  @$internal
  @override
  $ProviderElement<ApiResponseDecoder> $createElement(
          $ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  ApiResponseDecoder create(Ref ref) {
    return apiResponseDecoder(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ApiResponseDecoder value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ApiResponseDecoder>(value),
    );
  }
}

String _$apiResponseDecoderHash() =>
    r'ecb3eb71e03eee736947a39962238d70b0999231';
