import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pandora_gaming/constants/social_networks.dart';

import 'navigation_icon.dart';
import 'navigation_text.dart';

class MainNavigationBar extends StatelessWidget {
  const MainNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 70),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Pandora',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Wrap(
              spacing: 30.0,
              children: const [
                NavText('Activity'),
                NavText('Roadmap'),
                NavText('NFT'),
                NavText('About us'),
                NavText('Contact'),
              ],
            ),
            Wrap(
              spacing: 15.0,
              children: const [
                NavigationIcon(
                  icon: kInstagramIcon,
                  link: kInstagramLink,
                ),
                NavigationIcon(
                  icon: kTwitterIcon,
                  link: kTwitterLink,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
