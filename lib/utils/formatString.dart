import 'package:flutter/material.dart';

Text formatText({
  required String title,
  required double fontSize,
  Color color = Colors.white,
  bool isBold = true,
}) =>
    Text(
      title,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
      ),
    );
