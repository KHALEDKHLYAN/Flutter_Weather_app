import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:weather_app/util/constants/colors.dart';

class CustomDotsIndicator extends StatelessWidget {
  const CustomDotsIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SmoothPageIndicator(
        count: 3, // Number of dots
        effect: ScrollingDotsEffect(
          activeDotColor: WColors.primary,  // Color for the active dot
          dotColor: Colors.grey,        // Color for inactive dots
          dotHeight: 10.0,              // Height of each dot
          dotWidth: 10.0,               // Width of each dot
          spacing: 8.0,                 // Space between dots
        ),
        controller: PageController(initialPage: 1),  // Use a PageController, even if not directly linked to a PageView
      ),
    );
  }
}
