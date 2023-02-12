import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:weather_app/model/weather.dart';

class WeatherApi {
  Future<Weather>? getCurrentWeather(String? location) async {
    var endpoint = Uri.parse(
        "https://api.openweathermap.org/data/2.5/weather?q=$location&appid=71c276bd62c8811e1be99b6686411878&units=metric");

    print(location);
    print(endpoint);

    var response = await http.get(endpoint);

    if (response.statusCode == 200) {
      print("API Code 200");
    } else {
      print("API Error");
    }
    var weatherBody = jsonDecode(response.body);
    Weather weather = Weather.fromJson(weatherBody);

    //print(endpoint);
    print(weatherBody);
    print(weather.temp);
    return weather;
    //return Weather.fromJson(weatherBody);
  }
}
