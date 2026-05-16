import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../constants/endpoints.dart';
import '../models/create_spot_response_model.dart';
import '../models/get_spots_response_model.dart';

part 'spot_rest_api.g.dart';

@RestApi()
abstract class SpotRestApi {
  factory SpotRestApi(Dio dio, {String baseUrl}) = _SpotRestApi;

  @GET(Endpoints.spots)
  Future<GetSpotsResponseModel> getSpots({
    @Query('mainAddress') String? mainAddress,
    @Query('subAddress') String? subAddress,
    @Query('difficulty') String? difficulty,
    @Query('features') List<String>? features,
    @Query('statuses') List<String>? statuses,
    @Query('spotId') int? spotId,
  });

  @POST(Endpoints.spots)
  Future<CreateSpotResponseModel> createSpot(
    @Body() Map<String, dynamic> body,
  );
}
