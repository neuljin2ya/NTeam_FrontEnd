import '../../../../common/entity/api_response.dart';
import '../../../spot/domain/entity/spot.dart';
import '../repository/saved_spot_repository.dart';

class GetSavedSpotsUseCase {
  const GetSavedSpotsUseCase(this._repository);

  final SavedSpotRepository _repository;

  Future<ApiResponse<List<Spot>>> call() {
    return _repository.getSavedSpots();
  }
}
