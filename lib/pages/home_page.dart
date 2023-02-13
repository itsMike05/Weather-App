import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:logger/logger.dart';
import 'package:weather_app/model/weather.dart';
import 'package:weather_app/pages/additional_info_page.dart';
import 'package:weather_app/pages/weather_page.dart';
import 'package:weather_app/services/weather_api.dart';

Logger logger = Logger();

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

// Main container color Color.fromARGB(109, 72, 47, 180)

class _HomePageState extends State<HomePage> {
  WeatherApi weatherClient = WeatherApi();
  Weather? weatherData;

  Future? getWeatherData() async {
    weatherData = await weatherClient.getCurrentWeather("Bydgoszcz");
    logger.d("Success!");
    return weatherData;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 249, 249, 249),
      appBar: AppBar(
        elevation: 2,
        backgroundColor: const Color.fromARGB(255, 249, 249, 249),
        centerTitle: true,
        title: const Text(
          "Weather",
          style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.w300,
              letterSpacing: 10,
              color: Colors.black),
        ),
        leading: IconButton(
          onPressed: () => Fluttertoast.showToast(
              msg: "Nothing here yet!", toastLength: Toast.LENGTH_LONG),
          icon: const Icon(Icons.menu_rounded),
          color: Colors.black,
        ),
      ),
      body: FutureBuilder(
        future: getWeatherData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            // Connection successful
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Primary weather information
                weatherPage(Icons.sunny, "${weatherData!.temp}",
                    "${weatherData!.cityName}"),
                const SizedBox(height: 50.0),
                const Text(
                  "Secondary statistics",
                  style: TextStyle(
                    color: Color.fromARGB(221, 33, 33, 33),
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Divider(thickness: 2),
                const SizedBox(height: 50.0),
                // Additional weather information
                additionalInformation(
                    "${weatherData!.humidity}",
                    "${weatherData!.wind}",
                    "${weatherData!.feelsLike}",
                    "${weatherData!.pressure}"),
              ],
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
