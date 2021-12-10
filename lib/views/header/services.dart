import 'package:flutter/material.dart';
import 'package:pandora_gaming/constants/color.dart';
import 'package:pandora_gaming/constants/path.dart';
import 'package:pandora_gaming/utils/formatString.dart';

class Services extends StatelessWidget {
  const Services({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 110),
      color: Colors.black54,
      child: Column(
        children: [
          Wrap(
            direction: Axis.vertical,
            alignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: 15,
            children: [
              formatText(
                title: 'Services we are offering'.toUpperCase(),
                fontSize: 14,
                color: kNeonGreen,
              ),
              formatText(title: 'TALENT DEVELOPMENT', fontSize: 40),
              formatText(
                title:
                    'We are committed to providing our customers with exceptional\nservice while offering our employees the best training.',
                color: kWhiteGrey,
                fontSize: 16,
                isBold: false,
              ),
            ],
          ),
          Container(height: 30),
          Wrap(
            spacing: 20,
            children: [
              boxTalent(title: 'LEVEL-UP', imagePath: kImages + 'level-up.png'),
              boxTalent(
                  title: 'PROFESSIONAL COACHES',
                  imagePath: kImages + 'level-up.png'),
              boxTalent(title: 'TEAMWORK', imagePath: kImages + 'level-up.png'),
            ],
          )
        ],
      ),
    );
  }
}

Container boxTalent({required String title, required String imagePath}) =>
    Container(
      constraints: const BoxConstraints(
          minWidth: 220, maxWidth: 220, minHeight: 250, maxHeight: 250),
      padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 30),
      decoration: BoxDecoration(
        border: Border.all(
          color: kWhiteGrey,
        ),
      ),
      child: Column(
        children: [
          Image.asset(
            imagePath,
            color: kWhite,
          ),
          Container(height: 20),
          formatText(
            title: title,
            fontSize: 16,
            color: kWhiteGrey,
          )
        ],
      ),
    );
