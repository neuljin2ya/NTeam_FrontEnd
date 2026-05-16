import '../entity/map_location.dart';
import '../repository/maps_repository.dart';

class ReverseGeocodeUseCase {
  const ReverseGeocodeUseCase(this._repository);

  final MapsRepository _repository;

  Future<MapLocation> call({
    required double latitude,
    required double longitude,
  }) {
    return _repository.reverseGeocode(
      latitude: latitude,
      longitude: longitude,
    );
  }
}
