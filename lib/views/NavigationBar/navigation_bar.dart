import 'package:flutter/material.dart';
import 'package:pandora_gaming/constants/social_networks.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'navigation_icon.dart';
import 'navigation_text.dart';

class MainNavigationBar extends StatelessWidget {
  const MainNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
        builder: (context, sizingInformation) {
          double verticalPadding = 30;
          double horizontalPadding = 20;

      if (sizingInformation.deviceScreenType == DeviceScreenType.desktop) {
        verticalPadding = 30;
        horizontalPadding = 20;
      }
        return Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: verticalPadding),
          child: Wrap(
            alignment: WrapAlignment.spaceBetween,
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: 40,
            runSpacing: 20,
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
                  NavText('NFT (Coming soon!)'),
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
        );
        },
    );
  }
}
