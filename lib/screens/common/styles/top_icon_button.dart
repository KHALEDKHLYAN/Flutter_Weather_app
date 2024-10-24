import 'package:flutter/material.dart';
import 'package:weather_app/util/constants/colors.dart';

class TopIconButton extends StatelessWidget {
  const TopIconButton(
      {super.key, required this.iconImage, required this.onPressed});

  final String iconImage;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50, // Width and height to make it circular
      height: 50,
      decoration: BoxDecoration(
        color: WColors.buttonDisabled, // Set the background color to grey
        shape: BoxShape.circle, // Makes the container circular
      ),
      child: IconButton(
        icon: Image.asset(
          iconImage,
          height: 24,
          width: 24,
        ), // The search icon
        onPressed: onPressed,
        // Optional: Set the icon color to white for contrast
      ),
    );
  }
}
