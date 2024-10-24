import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/service/weather_service.dart';
import 'package:weather_app/util/constants/api_constants.dart';
import 'package:weather_app/util/constants/colors.dart';

class WeatherFetchService extends ChangeNotifier {
  final WeatherService _weatherService = WeatherService(ApiConstant.secretAPIKey);
  Weather? _weather;

  Future<void> fetchWeather(BuildContext context) async {
    try {
      String cityName = await _weatherService.getCurrentCity();
      Weather weather = await _weatherService.getWeather(cityName);

      // Make sure the widget is still mounted before updating state
      if (context.mounted) {
        _weather = weather;
        notifyListeners();
      }
    } catch (e) {
      if (context.mounted) {
        _showErrorDialog(context, e.toString());
      }
    }
  }

  Weather? get weather => _weather;

  void _showErrorDialog(BuildContext context, String message) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        backgroundColor: WColors.error.withOpacity(0.6),
        title:  Text('Error'),
        content: Text(message),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.of(ctx).pop(),
            child:  Text('cool!'),
          ),
        ],
      ),
    );
  }
}
