import 'package:dio/dio.dart';

import '../models/save_saved_spot_request_model.dart';
import '../models/save_saved_spot_response_model.dart';
import 'saved_spot_rest_api.dart';

class RemoteSavedSpotDataSource {
  RemoteSavedSpotDataSource(this._api);

  final SavedSpotRestApi _api;

  Future<SaveSavedSpotResponseModel> saveSpot({required int spotId}) async {
    try {
      return await _api.saveSpot(
        SaveSavedSpotRequestModel(spotId: spotId).toJson(),
      );
    } on DioException catch (e) {
      final Object? data = e.response?.data;
      if (data is Map<String, dynamic>) {
        return SaveSavedSpotResponseModel.fromJson(data);
      }
      rethrow;
    }
  }
}
