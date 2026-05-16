import '../../domain/entity/spot.dart';
import '../models/spot_model.dart';

class SpotMapper {
  SpotMapper._();

  static Spot toEntity(SpotModel model) {
    return Spot(
      spotId: model.spotId,
      name: model.name,
      captionImgUrl: model.captionImgUrl,
      latitude: double.tryParse(model.latitude) ?? 0,
      longitude: double.tryParse(model.longitude) ?? 0,
      mainAddress: model.mainAddress,
      subAddress: model.subAddress,
      difficulty: model.difficulty,
      description: model.description,
      features: model.features,
      statuses: model.statuses,
      createdAt: model.createdAt,
    );
  }
}
