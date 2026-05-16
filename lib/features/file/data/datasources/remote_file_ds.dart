import 'dart:typed_data';

import 'package:dio/dio.dart';

import '../models/file_upload_response_model.dart';
import 'file_rest_api.dart';

class RemoteFileDataSource {
  RemoteFileDataSource(this._api);

  final FileRestApi _api;

  Future<FileUploadResponseModel> uploadFile(String filePath) async {
    final MultipartFile file = await MultipartFile.fromFile(filePath);
    try {
      return await _api.uploadFile(file);
    } on DioException catch (e) {
      final Object? data = e.response?.data;
      if (data is Map<String, dynamic>) {
        return FileUploadResponseModel.fromJson(data);
      }
      rethrow;
    }
  }

  Future<Uint8List> getFile(String fileUrl) {
    return _api.getFile(fileUrl);
  }
}
