import 'package:freezed_annotation/freezed_annotation.dart';

part 'reverse_geocode_response_model.freezed.dart';
part 'reverse_geocode_response_model.g.dart';

@freezed
abstract class ReverseGeocodeResponseModel with _$ReverseGeocodeResponseModel {
  const factory ReverseGeocodeResponseModel({
    @Default(ReverseGeocodeStatusModel()) ReverseGeocodeStatusModel status,
    @Default(<ReverseGeocodeResultModel>[])
    List<ReverseGeocodeResultModel> results,
  }) = _ReverseGeocodeResponseModel;

  factory ReverseGeocodeResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ReverseGeocodeResponseModelFromJson(json);

  const ReverseGeocodeResponseModel._();

  bool get isOk => status.code == 0;
}

@freezed
abstract class ReverseGeocodeStatusModel with _$ReverseGeocodeStatusModel {
  const factory ReverseGeocodeStatusModel({
    @Default(-1) int code,
    @Default('') String name,
    @Default('') String message,
  }) = _ReverseGeocodeStatusModel;

  factory ReverseGeocodeStatusModel.fromJson(Map<String, dynamic> json) =>
      _$ReverseGeocodeStatusModelFromJson(json);
}

@freezed
abstract class ReverseGeocodeResultModel with _$ReverseGeocodeResultModel {
  const factory ReverseGeocodeResultModel({
    @Default('') String name,
    ReverseGeocodeRegionModel? region,
    ReverseGeocodeLandModel? land,
  }) = _ReverseGeocodeResultModel;

  factory ReverseGeocodeResultModel.fromJson(Map<String, dynamic> json) =>
      _$ReverseGeocodeResultModelFromJson(json);
}

@freezed
abstract class ReverseGeocodeRegionModel with _$ReverseGeocodeRegionModel {
  const factory ReverseGeocodeRegionModel({
    ReverseGeocodeAreaModel? area0,
    ReverseGeocodeAreaModel? area1,
    ReverseGeocodeAreaModel? area2,
    ReverseGeocodeAreaModel? area3,
    ReverseGeocodeAreaModel? area4,
  }) = _ReverseGeocodeRegionModel;

  factory ReverseGeocodeRegionModel.fromJson(Map<String, dynamic> json) =>
      _$ReverseGeocodeRegionModelFromJson(json);
}

@freezed
abstract class ReverseGeocodeAreaModel with _$ReverseGeocodeAreaModel {
  const factory ReverseGeocodeAreaModel({
    @Default('') String name,
  }) = _ReverseGeocodeAreaModel;

  factory ReverseGeocodeAreaModel.fromJson(Map<String, dynamic> json) =>
      _$ReverseGeocodeAreaModelFromJson(json);
}

@freezed
abstract class ReverseGeocodeLandModel with _$ReverseGeocodeLandModel {
  const factory ReverseGeocodeLandModel({
    @Default('') String type,
    @Default('') String name,
    @Default('') String number1,
    @Default('') String number2,
    ReverseGeocodeAdditionModel? addition0,
  }) = _ReverseGeocodeLandModel;

  factory ReverseGeocodeLandModel.fromJson(Map<String, dynamic> json) =>
      _$ReverseGeocodeLandModelFromJson(json);
}

@freezed
abstract class ReverseGeocodeAdditionModel with _$ReverseGeocodeAdditionModel {
  const factory ReverseGeocodeAdditionModel({
    @Default('') String type,
    @Default('') String value,
  }) = _ReverseGeocodeAdditionModel;

  factory ReverseGeocodeAdditionModel.fromJson(Map<String, dynamic> json) =>
      _$ReverseGeocodeAdditionModelFromJson(json);
}
