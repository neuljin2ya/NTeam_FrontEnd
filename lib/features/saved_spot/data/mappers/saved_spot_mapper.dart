import '../../domain/entity/saved_spot.dart';
import '../models/saved_spot_result_model.dart';

class SavedSpotMapper {
  SavedSpotMapper._();

  static SavedSpot toEntity(SavedSpotResultModel model) {
    return SavedSpot(savedSpotId: model.savedSpotId);
  }
}
