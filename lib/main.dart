import 'package:flutter/material.dart';
import 'package:weather_app/pages/home_page.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

// https://api.openweathermap.org/data/2.5/weather?q=London&appid=71c276bd62c8811e1be99b6686411878&units=metric

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Weather App",
      theme: ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
