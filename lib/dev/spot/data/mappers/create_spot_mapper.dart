import '../../domain/entity/create_spot_request.dart';
import '../../domain/entity/created_spot.dart';
import '../models/create_spot_data_model.dart';
import '../models/create_spot_request_model.dart';

class CreateSpotMapper {
  CreateSpotMapper._();

  static CreateSpotRequestModel toRequestModel(CreateSpotRequest request) {
    return CreateSpotRequestModel(
      name: request.name,
      captionImgUrl: request.captionImgUrl,
      latitude: request.latitude,
      longitude: request.longitude,
      mainAddress: request.mainAddress,
      subAddress: request.subAddress,
      difficulty: request.difficulty,
      description: request.description,
      features: request.features,
      statuses: request.statuses,
    );
  }

  static CreatedSpot toEntity(CreateSpotDataModel model) {
    return CreatedSpot(spotId: model.spotId);
  }
}
