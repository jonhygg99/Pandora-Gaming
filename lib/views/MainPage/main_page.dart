import 'package:flutter/material.dart';
import 'package:pandora_gaming/constants/color.dart';
import 'package:pandora_gaming/views/NavigationBar/navigation_bar.dart';

import 'MainButton/main_button.dart';
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
          Positioned(
            width: MediaQuery.of(context).size.width,
            child: const MainNavigationBar(),
          ),
          MainImage(mainHeight),
          MainTitle(mainHeight),
          const MainButton(),
        ],
      ),
    );
  }
}
