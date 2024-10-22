import 'package:flutter/material.dart';
import 'package:weather_app/screens/common/widgets/circular_avatar.dart';
import 'package:weather_app/util/constants/colors.dart';
import 'package:weather_app/util/constants/image_strings.dart';

class LocationGenerator extends StatelessWidget {
  const LocationGenerator({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Stack(
        children: [
          // Background image
          Positioned.fill(
            child: Image.asset(
              WImages.containerImage1, // Replace with your image path
              fit: BoxFit.cover, // Ensures the image covers the entire screen
            ),
          ),
          SafeArea(
            child: Center(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 24,vertical: 24),
                width: 338,
                height: 438,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  color: WColors.lightContainer,
                ),
                child: Column(
                  
                  children: [
                    //CircularVatar
                    CircularAvatar()
                    //Title
                    //SubtitleText
                    //Get_Location Button
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
