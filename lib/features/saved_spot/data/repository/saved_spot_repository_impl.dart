import '../../../../common/entity/api_response.dart';
import '../../domain/entity/saved_spot.dart';
import '../../domain/repository/saved_spot_repository.dart';
import '../datasources/remote_saved_spot_ds.dart';
import '../mappers/saved_spot_mapper.dart';
import '../models/save_saved_spot_response_model.dart';

class SavedSpotRepositoryImpl implements SavedSpotRepository {
  SavedSpotRepositoryImpl(this._dataSource);

  final RemoteSavedSpotDataSource _dataSource;

  @override
  Future<ApiResponse<SavedSpot>> saveSpot({required int spotId}) async {
    final SaveSavedSpotResponseModel response =
        await _dataSource.saveSpot(spotId: spotId);

    return ApiResponse<SavedSpot>(
      code: response.code,
      message: response.message,
      data: response.isSuccess && response.result != null
          ? SavedSpotMapper.toEntity(response.result!)
          : null,
    );
  }
}
