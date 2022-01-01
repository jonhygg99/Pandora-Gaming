import 'package:flutter/material.dart';
import 'package:pandora_gaming/constants/color.dart';

class NavText extends StatelessWidget {
  const NavText(this.text, {Key? key}) : super(key: key);

  final String text;
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
