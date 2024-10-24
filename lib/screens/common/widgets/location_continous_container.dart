import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart'; // For getting the path to the file
import 'package:weather_app/models/weather_details.dart';

class LocationContinousContainer extends StatefulWidget {
  const LocationContinousContainer({super.key});

  @override
  State<LocationContinousContainer> createState() =>
      _LocationContinousContainerState();
}

class _LocationContinousContainerState
    extends State<LocationContinousContainer> {
  List<dynamic> _weatherData = []; // Changed to dynamic to handle mixed types

  @override
  void initState() {
    super.initState();
    _loadWeatherData(); // Load weather data on initialization
  }

  Future<void> _loadWeatherData() async {
    try {
      // Get the path to the JSON file
      final directory = await getApplicationDocumentsDirectory();
      final filePath = '${directory.path}/location_data.json'; // Update if needed
      final file = File(filePath);

      // Read and decode JSON data
      if (await file.exists()) {
        final contents = await file.readAsString();
        final jsonData = jsonDecode(contents);
        // Access the 'weatherData' key to get the list of weather details
        setState(() {
          _weatherData = List<Map<String, dynamic>>.from(jsonData['weatherData']);
        });
      } else {
        print("Weather data file does not exist.");
      }
    } catch (e) {
      print("Error reading weather data: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return _weatherData.isEmpty
        ? Center(child: CircularProgressIndicator()) // Loading indicator
        : ListView.builder(
            itemCount: _weatherData.length,
            itemBuilder: (context, index) {
              final weather = _weatherData[index];
              return WeatherDetailContainer(
                currentLocation: weather['currentLocation'],
                cityName: weather['cityName'],
                weatherConditions: weather['weatherConditions'],
                imageAsset: weather['imageAsset'],
                temperature: weather['temperature'],
                screenWidth: MediaQuery.of(context).size.width,
                screenHeight: MediaQuery.of(context).size.height,
              );
            },
          );
  }
}
