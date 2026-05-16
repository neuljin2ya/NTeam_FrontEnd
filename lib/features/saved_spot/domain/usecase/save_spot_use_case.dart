import '../../../../common/entity/api_response.dart';
import '../entity/saved_spot.dart';
import '../repository/saved_spot_repository.dart';

class SaveSpotUseCase {
  const SaveSpotUseCase(this._repository);

  final SavedSpotRepository _repository;

  Future<ApiResponse<SavedSpot>> call({required int spotId}) {
    return _repository.saveSpot(spotId: spotId);
  }
}
