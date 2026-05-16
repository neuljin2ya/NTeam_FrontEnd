import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../models/auth_me_response_model.dart';
import '../models/login_request_model.dart';
import '../models/login_response_model.dart';
import 'login_rest_api.dart';

class RemoteLoginDataSource {
  RemoteLoginDataSource(this._api);

  final LoginRestApi _api;

  Future<AuthMeResponseModel> getAuthMe(String deviceToken) async {
    try {
      return await _api.getAuthMe(deviceToken);
    } on DioException catch (e) {
      final Object? data = e.response?.data;
      debugPrint('getAuthMe error: $data');
      if (data is Map<String, dynamic>) {
        return AuthMeResponseModel.fromJson(data);
      }
      rethrow;
    }
  }

  Future<LoginResponseModel> login(LoginRequestModel body) async {
    try {
      debugPrint('login request: ${body.toJson()}');
      return await _api.login(body.toJson());
    } on DioException catch (e) {
      final Object? data = e.response?.data;
      debugPrint('login error: $data');
      if (data is Map<String, dynamic>) {
        return LoginResponseModel.fromJson(data);
      }
      rethrow;
    }
  }
}
