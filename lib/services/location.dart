import 'package:geolocator/geolocator.dart';

class Location {
  Location({this.latitude = 0, this.longitude = 0});

  double latitude, longitude;

  Future<void> getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      latitude = position.latitude;
      longitude = position.longitude;
      //print("lat = " + latitude.toString() + ", lon = " + longitude.toString());
    } catch (e) {
      print(e);
    }
  }
}
