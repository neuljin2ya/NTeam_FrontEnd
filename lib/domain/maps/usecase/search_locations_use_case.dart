import '../entity/map_location.dart';
import '../entity/search_locations_query.dart';
import '../repository/maps_repository.dart';

class SearchLocationsUseCase {
  const SearchLocationsUseCase(this._repository);

  final MapsRepository _repository;

  Future<List<MapLocation>> call(SearchLocationsQuery query) {
    return _repository.searchLocations(query);
  }
}
