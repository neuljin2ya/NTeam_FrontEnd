import '../../../../common/entity/api_response.dart';
import '../entity/get_spots_query.dart';
import '../entity/spot.dart';
import '../repository/spot_repository.dart';

class GetSpotsUseCase {
  const GetSpotsUseCase(this._repository);

  final SpotRepository _repository;

  Future<ApiResponse<List<Spot>>> call(GetSpotsQuery query) {
    return _repository.getSpots(query);
  }
}
