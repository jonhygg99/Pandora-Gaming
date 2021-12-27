import 'dart:html';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pandora_gaming/constants/color.dart';
import 'package:pandora_gaming/constants/path.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);
  final double mainHeight = 950;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: mainHeight,
        color: kDarkBlue,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            const NavigationBar(),
            MainImage(mainHeight),
            MainTitle(mainHeight),
          ],
        ),);
  }
}

class NavigationBar extends StatelessWidget {
  const NavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 70),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Pandora',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Wrap(
              spacing: 30.0,
              children: const [
                NavText('Activity'),
                NavText('About us'),
                NavText('Contact'),
              ],
            ),
            Wrap(
              spacing: 30.0,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const FaIcon(FontAwesomeIcons.instagram),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const FaIcon(FontAwesomeIcons.twitter),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

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

class MainTitle extends StatelessWidget {
  const MainTitle(this.mainHeight, {Key? key}) : super(key: key);

  final double mainHeight;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: mainHeight / 3 - 100,
      right: MediaQuery.of(context).size.width / 2 - 50,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Become a\nprofessional\nplayer',
            style: TextStyle(
                fontSize: 140, fontWeight: FontWeight.bold, height: 0.9),
          ),
          Container(height: 50),
          const Text(
              'Join a community with the same goal as you,\n'
              'become a professional player.\n'
              'We love being competitive. We love our community.\n'
              'We love being at the top.',
              style:
                  TextStyle(fontSize: 20, color: kDarkWhite, wordSpacing: 1.4))
        ],
      ),
    );
  }
}

class MainImage extends StatelessWidget {
  const MainImage(this.mainHeight, {Key? key}) : super(key: key);
  final double mainHeight;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: MediaQuery.of(context).size.width / 2 - 200,
      child: ColorFiltered(
        colorFilter: const ColorFilter.mode(Colors.white54, BlendMode.modulate),
        child: Image(
          image: const AssetImage(kImages + 'esport.jpeg'),
          alignment: Alignment.center,
          height: mainHeight - 150,
          width: MediaQuery.of(context).size.width / 2,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
