import '../../domain/entity/uploaded_file.dart';
import '../models/file_upload_result_model.dart';

class FileUploadMapper {
  FileUploadMapper._();

  static UploadedFile toEntity(FileUploadResultModel model) {
    return UploadedFile(fileUrl: model.fileUrl);
  }
}
