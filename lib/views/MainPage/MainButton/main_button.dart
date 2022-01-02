import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pandora_gaming/constants/color.dart';

import 'main_button_design.dart';

class MainButton extends StatelessWidget {
  const MainButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kWhite,
      child: Row(
        children: [
          MainButtonDesign(
            title: 'Become a Member',
            link: 'https://forms.gle/QkVeeiqLGM4Kz6Lj9',
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
            link: '',
            icon: Icon(
              Icons.card_giftcard,
              color: kBlack,
            ),
            isLeft: true,
          ),
        ],
      ),
    );
  }
}
