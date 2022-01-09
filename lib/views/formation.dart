import 'package:flutter/material.dart';
import 'package:pandora_gaming/constants/color.dart';
import 'package:pandora_gaming/constants/path.dart';
import 'package:pandora_gaming/utils/formatString.dart';

class Formation extends StatelessWidget {
  const Formation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        // mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: 500,
            child: Column(
              children: [
                formatText(
                  title: 'WELCOME TO PANDORA GAMING FORMATION',
                  fontSize: 15,
                  color: kSoftBlack,
                ),
                Container(height: 20),
                formatText(
                  title: 'WE ARE THE BEST ESPORT FORMATION AGENCY',
                  fontSize: 40,
                  color: kBlack,
                ),
                Container(height: 40),
                formatText(
                  title:
                      'We are committed to providing our customers with exceptional service while offering the best training with the best eSport coaches. We are here to change the rules. We are here to rise you to the the top eSports leagues and tournaments.',
                  color: kSofterBlack,
                  fontSize: 14,
                )
              ],
            ),
          ),
          Container(width: 30),
          Image.asset(
            kImages + 'formation.jpg',
            width: 800,
            height: 400,
          )
        ],
      ),
    );
  }
}
