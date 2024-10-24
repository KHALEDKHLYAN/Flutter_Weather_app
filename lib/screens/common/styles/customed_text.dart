import 'package:flutter/material.dart';

class CustomedText extends StatelessWidget {
  const CustomedText({super.key, required this.textString});
  final String textString;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          textString,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ],
    );
  }
}
