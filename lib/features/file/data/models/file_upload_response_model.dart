import 'package:freezed_annotation/freezed_annotation.dart';

import 'file_upload_result_model.dart';

part 'file_upload_response_model.freezed.dart';
part 'file_upload_response_model.g.dart';

@freezed
abstract class FileUploadResponseModel with _$FileUploadResponseModel {
  const factory FileUploadResponseModel({
    required bool isSuccess,
    required String code,
    required String message,
    FileUploadResultModel? result,
  }) = _FileUploadResponseModel;

  factory FileUploadResponseModel.fromJson(Map<String, dynamic> json) =>
      _$FileUploadResponseModelFromJson(json);

  const FileUploadResponseModel._();
}
