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
    final double screenWidth = MediaQuery.of(context).size.width;
    final double imageWidthDesktop = screenWidth / 2;
    double containerHeight = 950;
    const double mainHeightImage = 950;
    double mainHeightMobile = 880;

    if (screenWidth >= 1600) {
      containerHeight = 950;
    } else if (screenWidth >= 1009) {
      containerHeight = 830;
    } else if (screenWidth >= 857) {
      containerHeight = 880;
    } else if (screenWidth >= 722) {
      containerHeight = 920;
    }

    return ScreenTypeLayout(
      breakpoints: const ScreenBreakpoints(
        tablet: 600,
        desktop: 1600,
        watch: 300,
      ),
      desktop: Container(
        width: screenWidth,
        height: containerHeight,
        color: kDarkBlue,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Positioned(
              width: screenWidth,
              child: const MainNavigationBar(),
            ),
            Positioned(
              bottom: 0,
              left: imageWidthDesktop - 200,
              child: MainImage(
                mainHeight: mainHeightImage,
                imageWidth: imageWidthDesktop,
              ),
            ),
            Positioned(
              bottom: mainHeightImage / 3 - 100,
              right: imageWidthDesktop,
              child: const MainTitle(),
            ),
            const Positioned(
              right: 0,
              bottom: 0,
              child: MainButton(),
            ),
          ],
        ),
      ),
      mobile: Container(
        width: screenWidth,
        height: containerHeight,
        color: kDarkBlue,
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              child: MainImage(
                mainHeight: mainHeightMobile,
                imageWidth: screenWidth,
              ),
            ),
            Positioned(
              width: screenWidth,
              child: const MainNavigationBar(),
            ),
            // const MainTitle(),
            const Positioned(              right: 0,
                bottom: 0,
                child: MainButton()),
          ],
        ),
      ),
    );
  }
}
