import 'package:dio/dio.dart';

import '../models/add_spot_status_request_model.dart';
import '../models/add_spot_status_response_model.dart';
import '../models/create_spot_request_model.dart';
import '../models/create_spot_response_model.dart';
import '../models/get_spots_response_model.dart';
import 'spot_rest_api.dart';

class RemoteSpotDataSource {
  RemoteSpotDataSource(this._api);

  final SpotRestApi _api;

  Future<GetSpotsResponseModel> getSpots({
    String? mainAddress,
    String? subAddress,
    String? difficulty,
    List<String>? features,
    List<String>? statuses,
    int? spotId,
  }) async {
    try {
      return await _api.getSpots(
        mainAddress: mainAddress,
        subAddress: subAddress,
        difficulty: difficulty,
        features: features,
        statuses: statuses,
        spotId: spotId,
      );
    } on DioException catch (e) {
      final Object? data = e.response?.data;
      if (data is Map<String, dynamic>) {
        return GetSpotsResponseModel.fromJson(data);
      }
      rethrow;
    }
  }

  Future<CreateSpotResponseModel> createSpot(
    CreateSpotRequestModel body,
  ) async {
    try {
      return await _api.createSpot(body.toJson());
    } on DioException catch (e) {
      final Object? data = e.response?.data;
      if (data is Map<String, dynamic>) {
        return CreateSpotResponseModel.fromJson(data);
      }
      rethrow;
    }
  }

  Future<AddSpotStatusResponseModel> addSpotStatus({
    required int spotId,
    required List<String> statuses,
  }) async {
    try {
      return await _api.addSpotStatus(
        spotId,
        AddSpotStatusRequestModel(statuses: statuses).toJson(),
      );
    } on DioException catch (e) {
      final Object? data = e.response?.data;
      if (data is Map<String, dynamic>) {
        return AddSpotStatusResponseModel.fromJson(data);
      }
      rethrow;
    }
  }
}
