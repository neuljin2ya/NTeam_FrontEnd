import 'dart:typed_data';

import '../repository/file_repository.dart';

class GetFileUseCase {
  const GetFileUseCase(this._repository);

  final FileRepository _repository;

  Future<Uint8List> call(String fileUrl) {
    return _repository.getFile(fileUrl);
  }
}
