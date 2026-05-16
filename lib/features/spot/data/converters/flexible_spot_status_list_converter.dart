import 'package:json_annotation/json_annotation.dart';

import '../models/spot_status_list_model.dart';

/// `statusList`가 객체 배열 또는 문자열 배열의 배열로 올 때 파싱합니다.
class FlexibleSpotStatusListConverter
    implements JsonConverter<List<SpotStatusListModel>, Object?> {
  const FlexibleSpotStatusListConverter();

  @override
  List<SpotStatusListModel> fromJson(Object? json) {
    if (json is! List<dynamic>) {
      return const <SpotStatusListModel>[];
    }

    final List<SpotStatusListModel> result = <SpotStatusListModel>[];
    for (int index = 0; index < json.length; index++) {
      final Object? item = json[index];
      if (item is Map<String, dynamic>) {
        result.add(SpotStatusListModel.fromJson(item));
        continue;
      }
      if (item is List<dynamic>) {
        result.add(
          SpotStatusListModel(
            spotStatusListId: index,
            statuses: item.map((Object? e) => e.toString()).toList(),
          ),
        );
      }
    }
    return result;
  }

  @override
  Object? toJson(List<SpotStatusListModel> object) =>
      object.map((SpotStatusListModel e) => e.toJson()).toList();
}
