import 'package:flutter/material.dart';

Widget weatherPage(IconData weatherIcon, String temp, String location) {
  return Center(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: 15.0),
        Icon(
          weatherIcon,
          color: Colors.amber,
          size: 64.0,
        ),
        const SizedBox(height: 15.0),
        Text(
          temp,
          style: const TextStyle(fontSize: 36, fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: 15.0),
        Text(
          location,
          style: const TextStyle(fontSize: 28, fontWeight: FontWeight.w300),
        )
      ],
    ),
  );
}
