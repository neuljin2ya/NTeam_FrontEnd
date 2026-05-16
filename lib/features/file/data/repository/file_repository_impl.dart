import 'dart:typed_data';

import '../../../../common/entity/api_response.dart';
import '../../domain/entity/uploaded_file.dart';
import '../../domain/repository/file_repository.dart';
import '../datasources/remote_file_ds.dart';
import '../mappers/file_upload_mapper.dart';
import '../models/file_upload_response_model.dart';

class FileRepositoryImpl implements FileRepository {
  FileRepositoryImpl(this._dataSource);

  final RemoteFileDataSource _dataSource;

  @override
  Future<ApiResponse<UploadedFile>> uploadFile(String filePath) async {
    final FileUploadResponseModel response =
        await _dataSource.uploadFile(filePath);

    return ApiResponse<UploadedFile>(
      code: response.code,
      message: response.message,
      data: response.result != null
          ? FileUploadMapper.toEntity(response.result!)
          : null,
    );
  }

  @override
  Future<Uint8List> getFile(String fileUrl) {
    return _dataSource.getFile(fileUrl);
  }
}
