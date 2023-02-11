import 'package:flutter/material.dart';

TextStyle mainFont =
    const TextStyle(fontSize: 30.0, fontWeight: FontWeight.w300);
TextStyle infoFont =
    const TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500);

Widget additionalInformation(
    String humidity, String wind, String feels_like, String pressure) {
  return Container(
    width: double.infinity,
    padding: const EdgeInsets.all(15.0),
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
                const SizedBox(height: 40.0),
                Text("Pressure", style: mainFont),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  wind,
                  style: infoFont,
                ),
                const SizedBox(height: 40.0),
                Text(pressure, style: infoFont),
              ],
            ),
          ],
        ),
      ],
    ),
  );
}
