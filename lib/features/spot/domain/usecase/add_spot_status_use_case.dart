import '../../../../common/entity/api_response.dart';
import '../repository/spot_repository.dart';

class AddSpotStatusUseCase {
  const AddSpotStatusUseCase(this._repository);

  final SpotRepository _repository;

  Future<ApiResponse<List<String>>> call({
    required int spotId,
    required String description,
    required List<String> statuses,
  }) {
    return _repository.addSpotStatus(
      spotId: spotId,
      description: description,
      statuses: statuses,
    );
  }
}
