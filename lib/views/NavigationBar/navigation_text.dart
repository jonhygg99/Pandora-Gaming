import 'package:flutter/material.dart';
import 'package:pandora_gaming/constants/color.dart';

class NavText extends StatelessWidget {
  final String text;

  const NavText({required this.text, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        text,
        style: const TextStyle(
            fontWeight: FontWeight.normal, fontSize: 20, color: kWhite),
      ),
    );
  }
}
