import 'package:flutter/material.dart';
import 'package:weather_app/util/constants/colors.dart';

class CircularAvatar extends StatelessWidget {
  const CircularAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container( // Add padding if you want a border
      decoration: BoxDecoration(
        color: WColors.primary.withOpacity(0.5), // Border color
        shape: BoxShape.circle,
      ),
      child: CircleAvatar(
        radius: 75,
        // backgroundImage: AssetImage(WImages.avatarAsset),
        backgroundColor: WColors.primary.withOpacity(0.5),
      ),
    );
  }
}
