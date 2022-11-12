import 'package:flutter/material.dart';

Widget bigHeading({required String title, bool bold: false}) {
  return Text(
    title,
    style: TextStyle(
      fontSize: 25,
      fontWeight: bold ? FontWeight.bold : FontWeight.normal,
    ),
  );
}
