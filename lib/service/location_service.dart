import 'package:geolocator/geolocator.dart';

class LocationService {
  // Method to check and request location permission
  Future<Position?> getCurrentLocation() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Check if location services are enabled
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled, return null
      return null;
    }

    // Check and request location permission
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // Permissions are denied, return null
        return null;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, return null
      return null;
    }

    // Get the current position using LocationSettings
    return await Geolocator.getCurrentPosition(
      locationSettings: LocationSettings(
        accuracy: LocationAccuracy.high, // You can also use low, medium, etc.
        distanceFilter: 100, // Minimal distance (in meters) to trigger update
      ),
    );
  }
}
