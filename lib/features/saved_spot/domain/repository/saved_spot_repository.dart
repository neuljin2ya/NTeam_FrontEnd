import '../../../../common/entity/api_response.dart';
import '../../../spot/domain/entity/spot.dart';
import '../entity/saved_spot.dart';

abstract class SavedSpotRepository {
  Future<ApiResponse<List<Spot>>> getSavedSpots();

  Future<ApiResponse<SavedSpot>> saveSpot({required int spotId});
}
