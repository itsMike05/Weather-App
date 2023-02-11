import 'package:flutter/material.dart';

Widget weatherPage(IconData weatherIcon, String temp, String location) {
  return Center(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          weatherIcon,
          color: Colors.amber,
          size: 64.0,
        )
      ],
    ),
  );
}
