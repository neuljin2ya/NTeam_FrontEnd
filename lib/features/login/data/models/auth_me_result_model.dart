import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_me_result_model.freezed.dart';
part 'auth_me_result_model.g.dart';

@freezed
abstract class AuthMeResultModel with _$AuthMeResultModel {
  const factory AuthMeResultModel({
    @JsonKey(name: 'nickName') String? nickName,
  }) = _AuthMeResultModel;

  factory AuthMeResultModel.fromJson(Map<String, dynamic> json) =>
      _$AuthMeResultModelFromJson(json);
}
