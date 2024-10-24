import 'package:flutter/material.dart';
import 'package:weather_app/screens/common/pages/location_details_page.dart';
import 'package:weather_app/screens/common/pages/location_generator.dart';
import 'package:weather_app/screens/home/home_screen.dart';
import 'package:weather_app/util/themes/theme.dart';


class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: WAppTheme.lightTheme,
      darkTheme: WAppTheme.darkTheme,
      home: HomeScreen(),
      routes: {
        '/allow_Location_page': (context) => LocationGenerator(),
        '/location_details': (context) => LocationDetailsPage(),
      },
    );
  }
}