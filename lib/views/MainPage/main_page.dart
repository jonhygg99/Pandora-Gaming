import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pandora_gaming/constants/color.dart';

import 'NavigationBar/navigation_bar.dart';
import 'main_title.dart';
import 'main_image.dart';

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
          const MainNavigationBar(),
          MainImage(mainHeight),
          MainTitle(mainHeight),
          const MainButton(),
        ],
      ),
    );
  }
}

class MainButton extends StatelessWidget {
  const MainButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 0,
      bottom: 0,
      child: Container(
        color: kWhite,
        child: Row(
          children: [
            MainButtonDesign(
              title: 'Become a Member',
              icon: Transform.rotate(
                angle: 135 * pi / 180,
                child: const FaIcon(
                  FontAwesomeIcons.arrowLeft,
                  color: kBlack,
                ),
              ),
            ),
            Container(
              width: 1,
              height: 50,
              color: kBlack,
            ),
            const MainButtonDesign(
                title: 'View Benefits',
                icon: Icon(
                  Icons.card_giftcard,
                  color: kBlack,
                ),
            isLeft: true,),
          ],
        ),
      ),
    );
  }
}

class MainButtonDesign extends StatelessWidget {
  final String title;
  final Widget icon;
  final bool isLeft;
  const MainButtonDesign(
      {required this.title, required this.icon, this.isLeft = false, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        primary: kWhite,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0.0),
        ),
        elevation: 0,

      ),
      child: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Row(
          children: [
            isLeft ? Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: icon,
            ) : Container(),
            Text(
              title,
              style: const TextStyle(fontSize: 30, color: kBlack),
            ),
            Container(width: isLeft ? 0 : 15),
            isLeft ? Container() : icon
          ],
        ),
      ),
    );
  }
}
