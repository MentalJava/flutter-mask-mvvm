import 'package:flutter_mask_mvvm/data/model/location.dart';
import 'package:flutter_mask_mvvm/data/repository/location_repository.dart';
import 'package:geolocator/geolocator.dart';

class LocationRepositoryImpl implements LocationRepository {
  @override
  Future<Location> getLocation() async {
    final serviceEnabled = await Geolocator.isLocationServiceEnabled();

    if (serviceEnabled) {
      var permission = await Geolocator.checkPermission();

      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();

        return Location(latitube: 0, longitube: 0);
      } else if (permission == LocationPermission.deniedForever) {
        return Location(latitube: 0, longitube: 0);
      }

      //승인
      final position = await Geolocator.getCurrentPosition();
      return Location(
          latitube: position.latitude, longitube: position.longitude);
    }
    return Location(latitube: 0, longitube: 0);
  }

  @override
  double distanceBetween(
      double startLat, double startLng, double endLat, double endLng) {
    return Geolocator.distanceBetween(startLat, startLng, endLat, endLng);
  }
}
