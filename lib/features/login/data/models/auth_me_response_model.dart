import 'package:freezed_annotation/freezed_annotation.dart';

import 'auth_me_result_model.dart';

part 'auth_me_response_model.freezed.dart';
part 'auth_me_response_model.g.dart';

@freezed
abstract class AuthMeResponseModel with _$AuthMeResponseModel {
  const factory AuthMeResponseModel({
    required bool isSuccess,
    required String code,
    required String message,
    AuthMeResultModel? result,
  }) = _AuthMeResponseModel;

  factory AuthMeResponseModel.fromJson(Map<String, dynamic> json) =>
      _$AuthMeResponseModelFromJson(json);

  const AuthMeResponseModel._();
}
