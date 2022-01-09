import 'package:flutter/material.dart';
import 'package:pandora_gaming/constants/color.dart';
import 'package:pandora_gaming/views/NavigationBar/navigation_bar.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: kDarkBlue,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 60.0),
        child: Column(
          children: const [
            MainNavigationBar(),
            Text(
              '© 2021 Parallel Lab. All rights reserved.',
              style: TextStyle(color: kDarkWhite),
            ),
          ],
        ),
      ),
    );
  }
}
