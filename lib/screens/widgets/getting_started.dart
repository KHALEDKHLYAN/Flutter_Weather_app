import 'package:flutter/material.dart';
import 'package:weather_app/util/constants/colors.dart';

class GettingStartedButton extends StatelessWidget {
  const GettingStartedButton({
    super.key,
    required this.textBtn,
    required this.onPressed,
  });

  final String textBtn;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: 264,
        height: 60,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(16)),
          color: WColors.primary,
        ),
        child: TextButton(
          onPressed: onPressed,
          child: Text(
            textBtn,
            style: Theme.of(context)
                .textTheme
                .headlineMedium
                ?.copyWith(color: WColors.textWhite),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
