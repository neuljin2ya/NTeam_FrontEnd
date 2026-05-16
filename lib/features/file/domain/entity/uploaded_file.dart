import 'package:freezed_annotation/freezed_annotation.dart';

part 'uploaded_file.freezed.dart';

@freezed
abstract class UploadedFile with _$UploadedFile {
  const factory UploadedFile({
    required String fileUrl,
  }) = _UploadedFile;
}
