import 'package:flutter/material.dart';
import 'package:weather_app/util/themes/appbar_theme.dart';
import 'package:weather_app/util/themes/bottomsheet_theme.dart';
import 'package:weather_app/util/themes/chip_theme.dart';
import 'package:weather_app/util/themes/elevatedbutton_theme.dart';
import 'package:weather_app/util/themes/text_themes.dart';



class WAppTheme{
  WAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Roboto',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: WTextTheme.lightTextTheme,
    appBarTheme: WAppBarTheme.lightAppBarTheme,
    bottomSheetTheme: WBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: WElevatedButtonTheme.lighElevatedButtonTheme,
    chipTheme: WChipTheme.lightChipTheme,

    
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Roboto',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: WTextTheme.darkTextTheme,
    appBarTheme: WAppBarTheme.darkAppBarTheme,
    bottomSheetTheme: WBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: WElevatedButtonTheme.darkElevatedButtonTheme,
    chipTheme: WChipTheme.darkChipTheme,
 
  );

}