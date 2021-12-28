import 'package:flutter/material.dart';
import 'package:pandora_gaming/constants/color.dart';

class MainTitle extends StatelessWidget {
  const MainTitle(this.mainHeight, {Key? key}) : super(key: key);

  final double mainHeight;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: mainHeight / 3 - 100,
      right: MediaQuery.of(context).size.width / 2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Become a\nprofessional\nplayer',
            style: TextStyle(
              fontSize: 140,
              fontWeight: FontWeight.bold,
              height: 0.9,
            ),
          ),
          Container(height: 50),
          const Text(
            'Join a community with the same goal as you,\n'
            'become a professional player.\n'
            'We love being competitive. We love our community.\n'
            'We love being at the top.',
            style: TextStyle(
              fontSize: 20,
              color: kDarkWhite,
              wordSpacing: 1.4,
            ),
          ),
        ],
      ),
    );
  }
}
