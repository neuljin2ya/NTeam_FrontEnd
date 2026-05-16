import 'package:freezed_annotation/freezed_annotation.dart';

part 'local_search_response_model.freezed.dart';
part 'local_search_response_model.g.dart';

@freezed
abstract class LocalSearchResponseModel with _$LocalSearchResponseModel {
  const factory LocalSearchResponseModel({
    @Default(<LocalSearchItemModel>[]) List<LocalSearchItemModel> items,
    @Default(0) int total,
    @Default(1) int start,
    @Default(0) int display,
  }) = _LocalSearchResponseModel;

  factory LocalSearchResponseModel.fromJson(Map<String, dynamic> json) =>
      _$LocalSearchResponseModelFromJson(json);
}

@freezed
abstract class LocalSearchItemModel with _$LocalSearchItemModel {
  const factory LocalSearchItemModel({
    @Default('') String title,
    @Default('') String link,
    @Default('') String category,
    @Default('') String description,
    @Default('') String telephone,
    @Default('') String address,
    @Default('') String roadAddress,
    @Default('') String mapx,
    @Default('') String mapy,
  }) = _LocalSearchItemModel;

  factory LocalSearchItemModel.fromJson(Map<String, dynamic> json) =>
      _$LocalSearchItemModelFromJson(json);

  const LocalSearchItemModel._();

  String get plainTitle =>
      title.replaceAll(RegExp('<[^>]*>'), '').trim();
}
