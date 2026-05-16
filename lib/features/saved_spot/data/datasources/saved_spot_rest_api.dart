import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../constants/endpoints.dart';
import '../models/get_saved_spots_response_model.dart';
import '../models/save_saved_spot_response_model.dart';

part 'saved_spot_rest_api.g.dart';

@RestApi()
abstract class SavedSpotRestApi {
  factory SavedSpotRestApi(Dio dio, {String baseUrl}) = _SavedSpotRestApi;

  @GET(Endpoints.savedSpots)
  Future<GetSavedSpotsResponseModel> getSavedSpots();

  @POST(Endpoints.savedSpots)
  Future<SaveSavedSpotResponseModel> saveSpot(
    @Body() Map<String, dynamic> body,
  );
}
