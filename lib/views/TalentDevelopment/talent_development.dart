import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pandora_gaming/constants/color.dart';
import 'package:pandora_gaming/utils/formatString.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'box_talent.dart';

class TalentDevelopment extends StatelessWidget {
  const TalentDevelopment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      double boxWidth = 800;
      double fontSizeTitle = 40;

      if (sizingInformation.deviceScreenType == DeviceScreenType.mobile) {
        boxWidth = MediaQuery.of(context).size.width;
        fontSizeTitle = 25;
      }

      return Container(
        padding: const EdgeInsets.symmetric(vertical: 110),
        color: kDBlack,
        child: Column(
          children: [
            Wrap(
              direction: Axis.vertical,
              alignment: WrapAlignment.center,
              runAlignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.center,
              spacing: 15,
              children: [
                const formatText(
                  title: 'SERVICES WE ARE OFFERING',
                  fontSize: 14,
                  color: kNeonGreen,
                ),
                formatText(
                    title: 'TALENT DEVELOPMENT', fontSize: fontSizeTitle),
                Container(
                  width: boxWidth,
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: const formatText(
                    title:
                        'We are committed to providing our community with exceptional service while offering the trainings that contains all the crucial aspects of the new Valorant stars upbringing.',
                    color: kDarkWhite,
                    fontSize: 16,
                    isBold: false,
                  ),
                ),
              ],
            ),
            Container(height: 30),
            Wrap(
              spacing: 20,
              runSpacing: 20,
              runAlignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: const [
                BoxTalent(
                  icon: FaIcon(
                    FontAwesomeIcons.crosshairs,
                    color: kDarkBlue,
                  ),
                  title: 'Weekly aiming training routine',
                  description:
                      'Each week will be a new aim concept to improve your ability to shoot at your targets.',
                ),
                BoxTalent(
                  icon: FaIcon(
                    FontAwesomeIcons.chalkboardTeacher,
                    color: kDarkBlue,
                  ),
                  title: 'Professional Team Coaching',
                  description:
                      'With a professional coach your team will get better and better.',
                ),
                BoxTalent(
                  icon: FaIcon(
                    FontAwesomeIcons.chess,
                    color: kDarkBlue,
                  ),
                  title: 'Personal Coaching',
                  description:
                      'With a VOD review or a One to One for boosting your knowledge, decisions and tactics in game.',
                ),
                BoxTalent(
                  icon: FaIcon(
                    FontAwesomeIcons.hashtag,
                    color: kDarkBlue,
                  ),
                  title: 'Social media strategy',
                  description:
                      'Visibility inside the world of professional gaming is very important in order to teams find about you.',
                ),
                BoxTalent(
                  icon: FaIcon(
                    FontAwesomeIcons.shapes,
                    color: kDarkBlue,
                  ),
                  title: 'Psychological Coaching',
                  description:
                      'Psychology is fundamental for being the best in every match and don\'t let yourself fall nor throwing rounds or even the game.',
                ),
                BoxTalent(
                  icon: FaIcon(
                    FontAwesomeIcons.appleAlt,
                    color: kDarkBlue,
                  ),
                  title: 'Balance Diet',
                  description:
                      'Every month will be updated a list of recipes and aliments. Where a good diet helps to perform better.',
                ),
                BoxTalent(
                    icon: FaIcon(
                      FontAwesomeIcons.running,
                      color: kDarkBlue,
                    ),
                    title: 'Table of motivations and exercises',
                    description:
                        'Being in form has a lots of benefits, such as mental and physically.'),
              ],
            ),
          ],
        ),
      );
    });
  }
}
