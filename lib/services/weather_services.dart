import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_application/models/weather_model.dart';

class WeatherService {
  Future<WeatherModel?> getWeather({required String cityName}) async {
    WeatherModel? thisDay;
    try {
      String apiKey = "9551524b30ce41f3b0a110459231105";
      String baseUrl = "http://api.weatherapi.com/v1";
      Uri url =
          Uri.parse("$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=7");
      http.Response response = await http.get(url);
      dynamic data = jsonDecode(response.body);
      thisDay = WeatherModel(
        date: data["location"]["localtime"],
        temp: data["forecast"]["forecastday"][0]["day"]["avgtemp_c"],
        minTemp: data["forecast"]["forecastday"][0]["day"]["mintemp_c"],
        maxTemp: data["forecast"]["forecastday"][0]["day"]["maxtemp_c"],
        state: data["forecast"]["forecastday"][0]["day"]["condition"]["text"],
      );
    } catch (e) {
      print(e);
    }
    return thisDay;
  }
}
