import 'package:flutter/material.dart';
import 'package:weather_app/screens/common/styles/customed_container.dart';

class WeatherDetailContainer extends StatelessWidget {
  final String currentLocation;
  final String cityName;
  final String weatherConditions;
  final String imageAsset;
  final String temperature;
  final double screenWidth;
  final double screenHeight;

  const WeatherDetailContainer({
    super.key,
    required this.currentLocation,
    required this.cityName,
    required this.weatherConditions,
    required this.imageAsset,
    required this.temperature,
    required this.screenWidth,
    required this.screenHeight,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: screenHeight * 0.01),
      child: CustomedContainer(
        currentLocation: currentLocation,
        cityName: cityName,
        weatherConditions: weatherConditions,
        imageAsset: imageAsset,
        temperature: temperature,
        screenWidth: screenWidth,
        screenHeight: screenHeight,
      ),
    );
  }
}
