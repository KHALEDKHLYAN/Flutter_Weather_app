import 'dart:convert'; // For parsing JSON
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/util/constants/api_constants.dart'; // For making HTTP requests
import 'package:geocoding/geocoding.dart'; // Ensure this is imported for placemark utilities

class WeatherService {
  final String apiKey; // Replace with your actual WeatherAPI key
  final String baseUrl = ApiConstant.baseUrl; // Base URL for WeatherAPI

  WeatherService(this.apiKey);

  Future<Weather> getWeather(String cityName) async {
    // Construct the full URL with the city and API key
    final response = await http.get(Uri.parse(
        '$baseUrl/weather?q=$cityName&key=$apiKey')); // Ensure the API structure is correct

    if (response.statusCode == 200) {
      // Successful API request
      return Weather.fromJson(jsonDecode(response.body));
    } else {
      // Handle errors
      throw Exception('Failed to load weather data');
    }
  }

  Future<String> getCurrentCity() async {
    // Get permission from user
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.deniedForever) {
        // Permissions are denied forever, handle appropriately
        throw Exception('Location permissions are permanently denied.');
      }
    }

    // Define platform-specific settings
    LocationSettings locationSettings = LocationSettings(
      accuracy: LocationAccuracy.best, // Use the best accuracy available
      distanceFilter: 100, // Update every 100 meters (customize as needed)
      // Optionally, set a timeout duration
      timeLimit: Duration(seconds: 10), // Time limit for fetching location
    );

    // Fetch the current location with settings
    Position position =
        await Geolocator.getCurrentPosition(locationSettings: locationSettings);

    // Convert the current location into a list of placemarks
    List<Placemark> placemarks =
        await placemarkFromCoordinates(position.latitude, position.longitude);

    // Extract the city name from the first placemark
    String? city = placemarks.first.locality;

    // Handle null city
    if (city == null || city.isEmpty) {
      throw Exception('Unable to determine the city name.');
    }

    return city;
  }
}
