import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_spot_request.freezed.dart';

@freezed
abstract class CreateSpotRequest with _$CreateSpotRequest {
  const factory CreateSpotRequest({
    required String name,
    required String captionImgUrl,
    required String latitude,
    required String longitude,
    required String mainAddress,
    required String subAddress,
    required String difficulty,
    required String description,
    @Default(<String>[]) List<String> features,
    @Default(<String>[]) List<String> statuses,
  }) = _CreateSpotRequest;
}
