import 'package:flutter/material.dart';

const sizedBoxHeight = 15.0;

Widget weatherPage(IconData weatherIcon, String temp, String location) {
  return Material(
    elevation: 1,
    borderRadius: const BorderRadius.all(Radius.circular(30.0)),
    child: Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: sizedBoxHeight),
          Icon(
            weatherIcon,
            color: Colors.amber,
            size: 64.0,
          ),
          const SizedBox(height: sizedBoxHeight),
          Text(
            "$temp °C",
            style: const TextStyle(fontSize: 36, fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: sizedBoxHeight),
          Text(location,
              style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                  color: Color(0XFF5a5a5a))),
          const SizedBox(height: sizedBoxHeight),
        ],
      ),
    ),
  );
}
