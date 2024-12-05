import 'package:flutter_mask_mvvm/data/model/location.dart';

abstract interface class LocationRepository {
  Future<Location> getLocation();

  double distanceBetween(
    double startLat,
    double startLng,
    double endLat,
    double endLng,
  );
}
