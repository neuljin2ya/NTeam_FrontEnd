import '../../../../common/entity/api_response.dart';
import '../entity/create_spot_request.dart';
import '../entity/created_spot.dart';
import '../entity/get_spots_query.dart';
import '../entity/spot.dart';

abstract class SpotRepository {
  Future<ApiResponse<List<Spot>>> getSpots(GetSpotsQuery query);

  Future<ApiResponse<CreatedSpot>> createSpot(CreateSpotRequest request);
}
