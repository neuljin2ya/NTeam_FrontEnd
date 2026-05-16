import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../spot/domain/entity/spot.dart';

part 'home_ui_model.freezed.dart';

@freezed
abstract class HomeUiModel with _$HomeUiModel {
  const factory HomeUiModel({
    @Default(<Spot>[]) List<Spot> spots,
    @Default(false) bool isLoadingSpots,
    @Default(false) bool isSearchingLocation,
    String? spotsErrorMessage,
  }) = _HomeUiModel;
}
