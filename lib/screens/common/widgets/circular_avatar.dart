import 'package:flutter/material.dart';
import 'package:weather_app/util/constants/colors.dart';
import 'package:weather_app/util/constants/image_strings.dart';

class CircularAvatar extends StatelessWidget {
  const CircularAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container( // Add padding if you want a border
      decoration: BoxDecoration(
        color: WColors.primary, // Border color
        shape: BoxShape.circle,
      ),
      child: CircleAvatar(
        radius: 65,
        // backgroundImage: AssetImage(WImages.avatarAsset),
        backgroundColor: WColors.primary,
        child: IconButton(onPressed: (){}, icon: Image.asset(WImages.sunnyCloud)),
      ),
    );
  }
}
