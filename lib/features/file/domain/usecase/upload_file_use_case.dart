import '../../../../common/entity/api_response.dart';
import '../entity/uploaded_file.dart';
import '../repository/file_repository.dart';

class UploadFileUseCase {
  const UploadFileUseCase(this._repository);

  final FileRepository _repository;

  Future<ApiResponse<UploadedFile>> call(String filePath) {
    return _repository.uploadFile(filePath);
  }
}
