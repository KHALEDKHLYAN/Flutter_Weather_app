import 'dart:convert';
import 'dart:io';
import 'package:path_provider/path_provider.dart';

Future<void> writeWeatherJson() async {
  // Define your weather data as a list
  final weatherData = [
    {
      "currentLocation": "Russia",
      "cityName": "Moscow",
      "weatherConditions": "Mostly Cloudy",
      "imageAsset": "assets/icons/Big_snow_little_snow.png",
      "temperature": "-4"
    },
    {
      "currentLocation": "China",
      "cityName": "Beijing",
      "weatherConditions": "Mostly Sunny",
      "imageAsset": "assets/icons/Sun.png",
      "temperature": "4"
    },
    {
      "currentLocation": "United States",
      "cityName": "California",
      "weatherConditions": "Clear",
      "imageAsset": "assets/icons/Sun_cloud_hailstone.png",
      "temperature": "6"
    }
  ];

  // Get the local directory to store the file
  final directory = await getApplicationDocumentsDirectory();
  final path = '${directory.path}/location_data.json';
  final file = File(path);

  // Write the JSON data to the file
  await file.writeAsString(jsonEncode(weatherData));

  print("Weather data written to file at: $path");
}
