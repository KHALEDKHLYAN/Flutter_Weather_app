// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:weather_app/screens/widgets/page_one_container.dart';
import 'package:weather_app/util/constants/colors.dart';
import 'package:weather_app/util/constants/image_strings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: WColors.primary,
      body: SafeArea(
        bottom: false,
        child: ListView(
          children: [
            Container(
              constraints: BoxConstraints.expand(
                width: 350,
                height: 450,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(WImages.containerImage1),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            PageOneContainer()
          ],
        ),
      ),
    );
  }
}

