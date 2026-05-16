import 'package:json_annotation/json_annotation.dart';

/// JSON 숫자 필드가 [num] 또는 [String]으로 올 때 [double]로 파싱합니다.
class FlexibleDoubleConverter implements JsonConverter<double, Object?> {
  const FlexibleDoubleConverter();

  @override
  double fromJson(Object? json) {
    if (json is num) {
      return json.toDouble();
    }
    if (json is String) {
      return double.tryParse(json.trim()) ?? 0;
    }
    return 0;
  }

  @override
  Object toJson(double object) => object;
}

/// JSON 정수 필드가 [num] 또는 [String]으로 올 때 [int]로 파싱합니다.
class FlexibleIntConverter implements JsonConverter<int, Object?> {
  const FlexibleIntConverter();

  @override
  int fromJson(Object? json) {
    if (json is num) {
      return json.toInt();
    }
    if (json is String) {
      return int.tryParse(json.trim()) ?? 0;
    }
    return 0;
  }

  @override
  Object toJson(int object) => object;
}

/// JSON 날짜 필드가 없거나 null일 때 epoch를 사용합니다.
class FlexibleDateTimeConverter implements JsonConverter<DateTime, Object?> {
  const FlexibleDateTimeConverter();

  @override
  DateTime fromJson(Object? json) {
    if (json is String && json.isNotEmpty) {
      return DateTime.parse(json);
    }
    return DateTime.fromMillisecondsSinceEpoch(0);
  }

  @override
  Object toJson(DateTime object) => object.toIso8601String();
}
