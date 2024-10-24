import 'package:flutter/material.dart';
import 'package:weather_app/screens/common/styles/customed_text.dart';
import 'package:weather_app/screens/common/styles/top_icon_button.dart';
import 'package:weather_app/util/constants/image_strings.dart';
import 'package:weather_app/util/constants/text_strings.dart';

class CustomedTopbar extends StatefulWidget {
  const CustomedTopbar({super.key});

  @override
  State<CustomedTopbar> createState() => _CustomedTopbarState();
}

class _CustomedTopbarState extends State<CustomedTopbar> {
  String greeting = '';

  @override
  void initState() {
    super.initState();
    getGreeting();
  }

  void getGreeting() {
    DateTime now = DateTime.now();
    int hour = now.hour;

    setState(() {
      switch (hour ~/ 6) {
        // Divides hour into 4 blocks (0-5, 6-11, 12-17, 18-23)
        case 0:
          greeting = 'Good Night!'; // 0-5
          break;
        case 1:
          greeting = 'Good Morning!'; // 6-11
          break;
        case 2:
          greeting = 'Good Afternoon!'; // 12-17
          break;
        case 3:
        case 4:
          greeting = 'Good Evening!'; // 18-23
          break;
        default:
          greeting = 'Hello!';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
         crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomedText(textString: greeting,),
            CustomedText(textString: Wtexts.locationDetailsText),
          ],
        ),
        TopIconButton(iconImage: WImages.topContainerSearchIcon,onPressed: (){}),
        TopIconButton(iconImage: WImages.topContainerGlobalIcon,onPressed: (){}),
      ],
    );
  }
}
