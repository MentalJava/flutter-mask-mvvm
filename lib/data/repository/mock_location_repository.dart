import 'package:flutter_mask_mvvm/data/model/location.dart';
import 'package:flutter_mask_mvvm/data/repository/location_repository.dart';

class MockLocationRepository implements LocationRepository {
  @override
  double distanceBetween(
      double startLat, double startLng, double endLat, double endLng) {
    return 0;
  }

  @override
  Future<Location> getLocation() async {
    return Location(latitube: 0, longitube: 0);
  }
}
