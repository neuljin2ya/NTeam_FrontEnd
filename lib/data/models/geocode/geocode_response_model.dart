import 'package:freezed_annotation/freezed_annotation.dart';

part 'geocode_response_model.freezed.dart';
part 'geocode_response_model.g.dart';

@freezed
abstract class GeocodeResponseModel with _$GeocodeResponseModel {
  const factory GeocodeResponseModel({
    @Default('') String status,
    @Default(GeocodeMetaModel()) GeocodeMetaModel meta,
    @Default(<GeocodeAddressModel>[]) List<GeocodeAddressModel> addresses,
    String? errorMessage,
  }) = _GeocodeResponseModel;

  factory GeocodeResponseModel.fromJson(Map<String, dynamic> json) =>
      _$GeocodeResponseModelFromJson(json);

  const GeocodeResponseModel._();

  bool get isOk => status == 'OK';
}

@freezed
abstract class GeocodeMetaModel with _$GeocodeMetaModel {
  const factory GeocodeMetaModel({
    @Default(0) int totalCount,
    @Default(1) int page,
    @Default(0) int count,
  }) = _GeocodeMetaModel;

  factory GeocodeMetaModel.fromJson(Map<String, dynamic> json) =>
      _$GeocodeMetaModelFromJson(json);
}

@freezed
abstract class GeocodeAddressModel with _$GeocodeAddressModel {
  const factory GeocodeAddressModel({
    @Default('') String roadAddress,
    @Default('') String jibunAddress,
    @Default('') String englishAddress,
    @Default(<GeocodeAddressElementModel>[])
    List<GeocodeAddressElementModel> addressElements,
    @JsonKey(name: 'x') required String longitude,
    @JsonKey(name: 'y') required String latitude,
    double? distance,
  }) = _GeocodeAddressModel;

  factory GeocodeAddressModel.fromJson(Map<String, dynamic> json) =>
      _$GeocodeAddressModelFromJson(json);

  const GeocodeAddressModel._();

  double get latitudeValue => double.parse(latitude);

  double get longitudeValue => double.parse(longitude);

  String get buildingName {
    for (final GeocodeAddressElementModel element in addressElements) {
      if (element.types.contains('BUILDING_NAME')) {
        return element.longName;
      }
    }
    return '';
  }
}

@freezed
abstract class GeocodeAddressElementModel with _$GeocodeAddressElementModel {
  const factory GeocodeAddressElementModel({
    @Default(<String>[]) List<String> types,
    @Default('') String longName,
    @Default('') String shortName,
    @Default('') String code,
  }) = _GeocodeAddressElementModel;

  factory GeocodeAddressElementModel.fromJson(Map<String, dynamic> json) =>
      _$GeocodeAddressElementModelFromJson(json);
}
