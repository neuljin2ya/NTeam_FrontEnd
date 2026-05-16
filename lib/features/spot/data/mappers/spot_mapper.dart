import '../../domain/entity/spot.dart';
import '../../domain/entity/spot_status_list.dart';
import '../models/spot_model.dart';
import '../models/spot_status_list_model.dart';

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
      statusList: model.statusList.map(_toStatusListEntity).toList(),
      createdAt: model.createdAt,
    );
  }

  static SpotStatusList _toStatusListEntity(SpotStatusListModel model) {
    return SpotStatusList(
      spotStatusListId: model.spotStatusListId,
      description: model.description,
      statuses: model.statuses,
    );
  }
}
