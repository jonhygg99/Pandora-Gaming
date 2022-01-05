import 'package:flutter/material.dart';
import 'package:pandora_gaming/constants/color.dart';
import 'package:pandora_gaming/views/Testimonials/testimonies.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'constants.dart';

class Testimonials extends StatelessWidget {
  const Testimonials({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        final double screenWidth = MediaQuery.of(context).size.width;
        EdgeInsetsGeometry padding;
        double fontSizeTitle;
        double fontSizeText;
        double spaceBtwText;
        double boxWidth = boxWidthDesktop;
        double boxHeight = boxHeightDesktop;
        bool isTablet = false;

        if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
          isTablet = true;
        }
        if (sizingInformation.deviceScreenType == DeviceScreenType.mobile ||
            sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
          padding = const EdgeInsets.symmetric(horizontal: 20, vertical: 20);
          fontSizeTitle = 40;
          fontSizeText = 16;
          spaceBtwText = 20;
          boxWidth = boxWidthMobile;
          boxHeight = boxHeightMobile;
        } else {
          padding = const EdgeInsets.only(
              top: 80.0, right: 80, left: 80, bottom: 200);
          fontSizeTitle = 80;
          fontSizeText = 20;
          spaceBtwText = 40;
        }

        return Container(
          width: screenWidth,
          color: kDBlack,
          child: Padding(
            padding: padding,
            child: Wrap(
              alignment: WrapAlignment.end,
              spacing: 20,
              runSpacing: 20,
              children: [
                Container(
                  width: boxWidth,
                  height: boxHeight,
                  color: Colors.white54,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Our beloved\nmentors.',
                        style: TextStyle(
                          color: kWhite,
                          fontWeight: FontWeight.bold,
                          fontSize: fontSizeTitle,
                        ),
                      ),
                      Container(height: spaceBtwText),
                      SizedBox(
                        width: boxWidth - 40,
                        child: Text(
                          'We are very solid online.\n'
                          'Here are some of our members testimonials.',
                          style: TextStyle(
                            color: kDarkWhite,
                            fontSize: fontSizeText,
                            height: 1.5,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                isTablet
                    ? Container(
                        width: boxWidthMobile,
                        height: boxHeightMobile,
                        color: Colors.white54,
                      )
                    : Container(),
                for (var testimony in testimonies) testimony,
              ],
            ),
          ),
        );
      },
    );
  }
}
