import 'package:flutter/material.dart';
import 'package:pandora_gaming/constants/color.dart';
import 'package:pandora_gaming/views/NavigationBar/navigation_bar.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'MainButton/main_button.dart';
import 'main_title.dart';
import 'main_image.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      final double screenWidth = MediaQuery.of(context).size.width;
      final double screenHeight = MediaQuery.of(context).size.height;
      final double imageWidthDesktop = screenWidth / 2;
      double containerHeight = 950;
      const double mainHeightImage = 950;
      double mainHeightMobile = 880;
      bool isSmallDevice = false;

      if (screenWidth >= 1600) {
        containerHeight = 950;
      } else if (screenWidth >= 1009) {
        containerHeight = 830;
      } else if (screenWidth >= 857) {
        containerHeight = 880;
      } else if (screenWidth >= 722) {
        containerHeight = 920;
      } else {
        containerHeight = 970;
      }

      if (1600 > screenWidth) {
        isSmallDevice = true;
      }
      return Container(
        width: screenWidth,
        height: containerHeight,
        color: kDarkBlue,
        child: Stack(
          children: [
            Positioned(
              width: screenWidth,
              child: const MainNavigationBar(),
            ),
            Positioned(
              bottom: 0,
              left: isSmallDevice ? null : imageWidthDesktop - 200,
              child: MainImage(
                mainHeight: isSmallDevice ? mainHeightMobile : mainHeightImage,
                imageWidth: isSmallDevice ? screenWidth : imageWidthDesktop,
              ),
            ),
            Positioned(
              bottom: isSmallDevice
                  ? containerHeight / 2 - 80
                  : mainHeightImage / 3 - 100,
              left: isSmallDevice ? screenWidth / 10 : screenWidth / 16,
              // height: containerHeight,
              child: const MainTitle(),
            ),
            const Positioned(
              right: 0,
              bottom: 0,
              child: MainButton(),
            ),
          ],
        ),
      );
    });
  }
}
