import 'package:flutter/material.dart';
import 'package:pandora_gaming/constants/color.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'constants.dart';

class TestimonialBox extends StatelessWidget {
  final String testimonial;
  final String person;
  final String company;
  const TestimonialBox(
      {required this.testimonial,
        this.person = '',
        this.company = '',
        Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
        builder: (context, sizingInformation) {
          double fontSizeTestimony = 18;
          double fontSizePerson = 22;
          double fontSizeCompany = 18;
          double boxWidth = boxWidthDesktop;
          double boxHeight = boxHeightDesktop;

      if (sizingInformation.deviceScreenType == DeviceScreenType.mobile || sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
        fontSizeTestimony = 16;
        fontSizePerson = 20;
        fontSizeCompany = 16;
        boxWidth = boxWidthMobile;
        boxHeight = 250;
      }

        return ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: boxWidthDesktop, minWidth: boxWidthMobile, maxHeight: boxHeightDesktop, minHeight: boxHeightMobile),
          child: Container(
            color: kDarkBlue,
            // width: boxWidth,
            // height: boxHeight,
            child: Padding(
              padding: const EdgeInsets.all(35.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    testimonial,
                    style:
                     TextStyle(
                        color: kDarkWhite, fontSize: fontSizeTestimony, height: 2),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        person,
                        style:  TextStyle(color: kWhite, fontSize: fontSizePerson),
                      ),
                      Container(height: 10),
                      Text(
                        company,
                        style:  TextStyle(
                            color: kDarkWhite, fontSize: fontSizeCompany),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
        }
    );
  }
}