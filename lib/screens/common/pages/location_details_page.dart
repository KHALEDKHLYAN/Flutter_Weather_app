import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_details.dart';
import 'package:weather_app/screens/common/styles/customed_text.dart';
import 'package:weather_app/screens/common/styles/dot_indicators.dart';
import 'package:weather_app/screens/common/widgets/customed_topbar.dart';
import 'package:weather_app/service/weather_fetch_service.dart';
import 'package:weather_app/util/constants/image_strings.dart';
import 'package:weather_app/util/constants/text_strings.dart';
// Import the new widget

class LocationDetailsPage extends StatefulWidget {
  const LocationDetailsPage({super.key});

  @override
  State<LocationDetailsPage> createState() => _LocationDetailsPageState();
}

class _LocationDetailsPageState extends State<LocationDetailsPage> {
  late WeatherFetchService _weatherFetchService;  // Use late modifier for non-nullable fields

  @override
  void initState() {
    super.initState();

    // Initialize the service here
    _weatherFetchService = WeatherFetchService();

    // Call the method to fetch weather data
    _weatherFetchService.fetchWeather(context);
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: ListView(
        children: [
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: screenWidth * 0.06,
                vertical: screenHeight * 0.02,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomedTopbar(),
                  SizedBox(height: screenHeight * 0.02),

                  WeatherDetailContainer(
                    currentLocation: _weatherFetchService.weather?.cityName ?? "Loading City...",
                    cityName: 'Dhaka',
                    weatherConditions: 'Thunder',
                    imageAsset: WImages.weatherConditionImage,
                    temperature: _weatherFetchService.weather != null
                        ? '${_weatherFetchService.weather!.temperature.round()}'
                        : '...',
                    screenWidth: screenWidth,
                    screenHeight: screenHeight,
                  ),
                  SizedBox(height: screenHeight * 0.02),

                  const CustomDotsIndicator(),
                  SizedBox(height: screenHeight * 0.02),

                  const CustomedText(textString: Wtexts.locationDetailsSubText),
                  SizedBox(height: screenHeight * 0.01),

                  WeatherDetailContainer(
                    currentLocation: 'United States',
                    cityName: 'California',
                    weatherConditions: 'Clear',
                    imageAsset: WImages.sunCloudhailstone,
                    temperature: '6',
                    screenWidth: screenWidth,
                    screenHeight: screenHeight,
                  ),
                  WeatherDetailContainer(
                    currentLocation: 'China',
                    cityName: 'Beijing',
                    weatherConditions: 'Mostly Sunny',
                    imageAsset: WImages.sun,
                    temperature: '4',
                    screenWidth: screenWidth,
                    screenHeight: screenHeight,
                  ),
                  WeatherDetailContainer(
                    currentLocation: 'Russia',
                    cityName: 'Moscow',
                    weatherConditions: 'Mostly Cloudy',
                    imageAsset: WImages.bigSnowLitteleSnow,
                    temperature: '-4',
                    screenWidth: screenWidth,
                    screenHeight: screenHeight,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
