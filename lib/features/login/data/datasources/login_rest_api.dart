import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../constants/endpoints.dart';
import '../models/login_response_model.dart';

part 'login_rest_api.g.dart';

@RestApi()
abstract class LoginRestApi {
  factory LoginRestApi(Dio dio, {String baseUrl}) = _LoginRestApi;

  @POST(Endpoints.login)
  Future<LoginResponseModel> login(@Body() Map<String, dynamic> body);
}
