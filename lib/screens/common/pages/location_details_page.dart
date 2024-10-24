import 'package:flutter/material.dart';
import 'package:weather_app/screens/common/styles/customed_container.dart';
import 'package:weather_app/screens/common/styles/customed_text.dart';
import 'package:weather_app/screens/common/styles/dot_indicators.dart';
import 'package:weather_app/screens/common/widgets/customed_topbar.dart';
import 'package:weather_app/util/constants/image_strings.dart';
import 'package:weather_app/util/constants/text_strings.dart';

class LocationDetailsPage extends StatelessWidget {
  const LocationDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Use MediaQuery to get screen width and height
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: ListView(
        children: [
          SafeArea(
            child: Container(
              padding: EdgeInsets.symmetric(
                  horizontal: screenWidth * 0.06,
                  vertical: screenHeight * 0.02),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // Custom_apBar_Ttitle
                  CustomedTopbar(),
                  SizedBox(height: screenHeight * 0.02), // Responsive spacing

                  // Current_Location_container
                  CustomedContainer(
                    currentLocation: 'Current Location',
                    cityName: 'Dhaka',
                    weatherConditions: 'Thunder',
                    imageAsset: WImages.weatherConditionImage,
                    temperature: '20',
                    screenWidth: screenWidth,
                    screenHeight: screenHeight,
                  ),
                  SizedBox(height: screenHeight * 0.02), // Responsive spacing
                  //Smooth_Indicator_Dots
                  CustomDotsIndicator(),
                  SizedBox(height: screenHeight * 0.02), // Responsive spacing
                  //Text
                  CustomedText(textString: Wtexts.locationDetailsSubText),
                  SizedBox(height: screenHeight * 0.01), // Responsive spacing
                  //Custom_Containers_for_location_Details
                  CustomedContainer(
                    currentLocation: 'United States',
                    cityName: 'California',
                    weatherConditions: 'Clear',
                    imageAsset: WImages.sunCloudhailstone,
                    temperature: '6',
                    screenWidth: screenWidth,
                    screenHeight: screenHeight,
                  ),
                  SizedBox(height: screenHeight * 0.01), // Responsive spacing
                  CustomedContainer(
                    currentLocation: 'China',
                    cityName: 'Beijing',
                    weatherConditions: 'Mostly Sunny',
                    imageAsset: WImages.sun,
                    temperature: '4',
                    screenWidth: screenWidth,
                    screenHeight: screenHeight,
                  ),
                  SizedBox(height: screenHeight * 0.01), // Responsive spacing
                  CustomedContainer(
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
          )
        ],
      ),
    );
  }
}
