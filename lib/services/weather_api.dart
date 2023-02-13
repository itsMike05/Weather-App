import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:weather_app/model/weather.dart';

class WeatherApi {
  Future getCurrentWeather(String? location) async {
    var endpoint = Uri.parse(
        "https://api.openweathermap.org/data/2.5/weather?q=$location&appid=71c276bd62c8811e1be99b6686411878&units=metric");

    // print(location);
    // print(endpoint);

    final response = await http.get(endpoint);
    var weatherBody = jsonDecode(response.body);
    return Weather.fromJson(weatherBody);
  }
}
