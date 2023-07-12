import 'package:flutter/material.dart';

class WeatherModel {
  final String date;
  final double temp;
  final double minTemp;
  final double maxTemp;
  final String state;

  WeatherModel(
      {required this.date,
      required this.temp,
      required this.minTemp,
      required this.maxTemp,
      required this.state});

  @override
  String toString() {
    return "date = $date temp = $temp mini temp = $minTemp max temp = $maxTemp state = $state";
  }

  String getImage() {
    if (state == "Thunderstorm") {
      return "assets/images/thunderstorm.png";
    } else if (state == "Clear" || state == "Light Cloud") {
      return "assets/images/clear.png";
    } else if (state == "Sleet" || state == "Snow" || state == "hial") {
      return "assets/images/snow.png";
    } else if (state == "Heavy Cloud") {
      return "assets/images/cloudy.png";
    } else if (state == "Light Rain" ||
        state == "Heavy Rain" ||
        state == "Showers") {
      return "assets/images/rainy.png";
    } else {
      return "assets/images/clear.png";
    }
  }

  MaterialColor getColor() {
    if (state == "Thunderstorm") {
      return Colors.blue;
    } else if (state == "Clear" || state == "Light Cloud") {
      return Colors.orange;
    } else if (state == "Sleet" || state == "Snow" || state == "hial") {
      return Colors.blue;
    } else if (state == "Heavy Cloud") {
      return Colors.blueGrey;
    } else if (state == "Light Rain" ||
        state == "Heavy Rain" ||
        state == "Showers") {
      return Colors.blue;
    } else {
      return Colors.orange;
    }
  }
}
