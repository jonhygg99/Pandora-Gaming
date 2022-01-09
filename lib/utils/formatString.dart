import 'package:flutter/material.dart';
import 'package:pandora_gaming/constants/color.dart';

class formatText extends StatelessWidget {
  final String title;
  final double fontSize;
  final Color color;
  final bool isBold;

  const formatText({
    required this.title,
    required this.fontSize,
    this.color = kWhite,
    this.isBold = true,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
      ),
    );
  }
}
