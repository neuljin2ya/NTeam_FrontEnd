import '../../../../common/entity/api_response.dart';
import '../entity/create_spot_request.dart';
import '../entity/created_spot.dart';
import '../repository/spot_repository.dart';

class CreateSpotUseCase {
  const CreateSpotUseCase(this._repository);

  final SpotRepository _repository;

  Future<ApiResponse<CreatedSpot>> call(CreateSpotRequest request) {
    return _repository.createSpot(request);
  }
}
