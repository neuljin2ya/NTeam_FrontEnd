import '../../../../common/entity/api_response.dart';
import '../../domain/entity/create_spot_request.dart';
import '../../domain/entity/created_spot.dart';
import '../../domain/entity/get_spots_query.dart';
import '../../domain/entity/spot.dart';
import '../../domain/repository/spot_repository.dart';
import '../datasources/remote_spot_ds.dart';
import '../mappers/create_spot_mapper.dart';
import '../mappers/spot_mapper.dart';
import '../models/add_spot_status_response_model.dart';
import '../models/create_spot_response_model.dart';
import '../models/get_spots_response_model.dart';

class SpotRepositoryImpl implements SpotRepository {
  SpotRepositoryImpl(this._dataSource);

  final RemoteSpotDataSource _dataSource;

  @override
  Future<ApiResponse<List<Spot>>> getSpots(GetSpotsQuery query) async {
    final GetSpotsResponseModel response = await _dataSource.getSpots(
      mainAddress: query.mainAddress,
      subAddress: query.subAddress,
      difficulty: query.difficulty,
      features: query.features,
      statuses: query.statuses,
      spotId: query.spotId,
    );

    return ApiResponse<List<Spot>>(
      code: response.code,
      message: response.message,
      data: response.isSuccess && response.data != null
          ? response.data!.map(SpotMapper.toEntity).toList()
          : null,
    );
  }

  @override
  Future<ApiResponse<CreatedSpot>> createSpot(CreateSpotRequest request) async {
    final CreateSpotResponseModel response = await _dataSource.createSpot(
      CreateSpotMapper.toRequestModel(request),
    );

    return ApiResponse<CreatedSpot>(
      code: response.code,
      message: response.message,
      data: response.isSuccess && response.data != null
          ? CreateSpotMapper.toEntity(response.data!)
          : null,
    );
  }

  @override
  Future<ApiResponse<List<String>>> addSpotStatus({
    required int spotId,
    required String description,
    required List<String> statuses,
  }) async {
    final AddSpotStatusResponseModel response = await _dataSource.addSpotStatus(
      spotId: spotId,
      description: description,
      statuses: statuses,
    );

    return ApiResponse<List<String>>(
      code: response.code,
      message: response.message,
      data: response.isSuccess && response.result != null
          ? response.result!.statuses
          : null,
    );
  }
}
