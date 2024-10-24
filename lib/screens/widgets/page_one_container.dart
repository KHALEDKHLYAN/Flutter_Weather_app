import 'package:flutter/material.dart';
import 'package:weather_app/screens/common/styles/dot_indicators.dart';
import 'package:weather_app/screens/widgets/getting_started.dart';
import 'package:weather_app/util/constants/colors.dart';
import 'package:weather_app/util/constants/sizes.dart';
import 'package:weather_app/util/constants/text_strings.dart';

class PageOneContainer extends StatelessWidget {
  const PageOneContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      alignment: Alignment.center,
      constraints: BoxConstraints.expand(
        width: 300,
        height: 350,
      ),
      decoration: BoxDecoration(
        color: WColors.light,
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //Smooth_Indicator_Dots
          CustomDotsIndicator(),
          //Text
          Text(Wtexts.pageText1,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center),
          SizedBox(height: WSizes.spaceBtwnItems),
          Text(
            Wtexts.pageSubText,
            style: Theme.of(context).textTheme.bodySmall,
            textAlign: TextAlign.center,
          ),
          Spacer(),
          SizedBox(
            height: 55,
          ),
          GettingStartedButton(
              textBtn: Wtexts.buttonText,
              onPressed: () =>
                  Navigator.pushNamed(context, "/allow_Location_page")),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(Wtexts.createAccountText),
              TextButton(onPressed: () {}, child: Text(Wtexts.loginText))
            ],
          )
        ],
      ),
    );
  }
}
