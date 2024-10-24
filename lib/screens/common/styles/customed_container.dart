import 'package:flutter/material.dart';
import 'package:weather_app/util/constants/colors.dart';

class CustomedContainer extends StatelessWidget {
  const CustomedContainer({
    super.key,
    required this.currentLocation,
    required this.cityName,
    required this.weatherConditions,
    required this.temperature,
    required this.imageAsset,
    required this.screenWidth,
    required this.screenHeight,
  });

  final String currentLocation, cityName, weatherConditions, temperature;
  final String imageAsset;
  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth * 0.9, // 90% of screen width
      height: screenHeight * 0.2, // 20% of screen height
      decoration: BoxDecoration(
        color: WColors.primary,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: screenWidth * 0.04,
            vertical: screenHeight * 0.015), // Reduce top/bottom padding
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Left Column for Text
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  currentLocation,
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        color: WColors.textWhite,
                        fontSize: screenWidth * 0.045, // Slightly larger
                      ),
                ),
                SizedBox(height: screenHeight * 0.03), // Responsive spacing
                Text(
                  cityName,
                  style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                        color: WColors.textWhite,
                        fontSize: screenWidth * 0.085, // Slightly larger
                      ),
                ),
                SizedBox(height: screenHeight * 0.04),
                Text(
                  weatherConditions,
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        color: WColors.textWhite,
                        fontSize: screenWidth * 0.045, // Slightly larger
                      ),
                ),
              ],
            ),
            // Right Column for Icon and Temperature
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  // Weather Icon (constrained to 100x100)
                  Image.asset(
                    imageAsset,
                    width: screenWidth * 0.25, // Responsive, but capped at 100
                    height: screenHeight * 0.12, // Responsive height
                  ),
                  SizedBox(height: screenHeight * 0.01),
                  Text(
                    '°C',
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                          color: WColors.textWhite,
                          // Responsive, slightly larger
                        ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
