import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../constants/endpoints.dart';
import '../models/auth_me_response_model.dart';
import '../models/login_response_model.dart';

part 'login_rest_api.g.dart';

@RestApi()
abstract class LoginRestApi {
  factory LoginRestApi(Dio dio, {String baseUrl}) = _LoginRestApi;

  @GET(Endpoints.authMe)
  Future<AuthMeResponseModel> getAuthMe(
    @Header('deviceToken') String deviceToken,
  );

  @POST(Endpoints.login)
  Future<LoginResponseModel> login(@Body() Map<String, dynamic> body);
}
