import '../../domain/entity/spot.dart';
import '../models/spot_model.dart';

class SpotMapper {
  SpotMapper._();

  static Spot toEntity(SpotModel model) {
    return Spot(
      spotId: model.spotId,
      name: model.name,
      captionImgUrl: model.captionImgUrl,
      latitude: model.latitude,
      longitude: model.longitude,
      mainAddress: model.mainAddress,
      subAddress: model.subAddress,
      difficulty: model.difficulty,
      description: model.description,
      features: model.features,
      statusList: model.statusList,
      createdAt: model.createdAt,
    );
  }
}
