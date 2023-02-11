import 'package:flutter/material.dart';

TextStyle mainFont =
    const TextStyle(fontSize: 22.0, fontWeight: FontWeight.w300);
TextStyle infoFont =
    const TextStyle(fontSize: 18.0, fontWeight: FontWeight.w700);

Widget additionalInformation(
    String humidity, String wind, String feelsLike, String pressure) {
  return Container(
    width: double.infinity,
    padding: const EdgeInsets.all(10.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Wind",
                  style: mainFont,
                ),
                const SizedBox(height: 60.0),
                Text("Pressure", style: mainFont),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "$wind m/s",
                  style: infoFont,
                ),
                const SizedBox(height: 60.0),
                Text("$pressure hPa", style: infoFont),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Feels like",
                  style: mainFont,
                ),
                const SizedBox(height: 60.0),
                Text("Humidity", style: mainFont),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "$feelsLike °C",
                  style: infoFont,
                ),
                const SizedBox(height: 60.0),
                Text("$humidity %", style: infoFont),
              ],
            ),
          ],
        ),
      ],
    ),
  );
}
