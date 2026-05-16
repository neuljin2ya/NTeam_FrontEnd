import 'dart:typed_data';

import '../../../../common/entity/api_response.dart';
import '../entity/uploaded_file.dart';

abstract class FileRepository {
  Future<ApiResponse<UploadedFile>> uploadFile(String filePath);

  Future<Uint8List> getFile(String fileUrl);
}
