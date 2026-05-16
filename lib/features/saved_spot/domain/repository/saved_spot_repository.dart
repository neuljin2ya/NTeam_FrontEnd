import '../../../../common/entity/api_response.dart';
import '../entity/saved_spot.dart';

abstract class SavedSpotRepository {
  Future<ApiResponse<SavedSpot>> saveSpot({required int spotId});
}
