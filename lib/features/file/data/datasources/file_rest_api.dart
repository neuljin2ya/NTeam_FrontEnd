import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../constants/endpoints.dart';
import '../models/file_upload_response_model.dart';

part 'file_rest_api.g.dart';

@RestApi()
abstract class FileRestApi {
  factory FileRestApi(Dio dio, {String baseUrl}) = _FileRestApi;

  @POST(Endpoints.fileUpload)
  @MultiPart()
  Future<FileUploadResponseModel> uploadFile(
    @Part(name: 'file') MultipartFile file,
  );

  @GET(Endpoints.fileDownload)
  @DioResponseType(ResponseType.bytes)
  Future<Uint8List> getFile(@Query('url') String fileUrl);
}
