import 'package:flutter/material.dart';
import 'package:pandora_gaming/constants/color.dart';
import 'package:responsive_builder/responsive_builder.dart';

class MainTitle extends StatelessWidget {
  const MainTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        final screenWidth = MediaQuery.of(context).size.width;
        double fontSizeTitle = 140;
        double fontSizeText = 20;
        final Color colorText = 1600 > screenWidth ? kWhite : kDarkWhite;

        if (sizingInformation.deviceScreenType == DeviceScreenType.mobile) {
          fontSizeTitle = 40;
        } else if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
          fontSizeTitle = 60;
        } else if (1600 > screenWidth) {
          fontSizeTitle = 80;
        }

        return SizedBox(
          width: MediaQuery.of(context).size.width - 40,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Become a\nprofessional\nplayer',
                style: TextStyle(
                  fontSize: fontSizeTitle,
                  fontWeight: FontWeight.bold,
                  height: 0.9,
                ),
              ),
              Container(height: 50),
               Text(
                'Join a community with the same goal as you,\n'
                'become a professional player.\n'
                'We love being competitive. We love our community.\n'
                'We love being at the top.',
                style: TextStyle(
                  fontSize: fontSizeText,
                  color: colorText,
                  wordSpacing: 1.4,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
