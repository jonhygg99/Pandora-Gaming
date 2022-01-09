import 'package:flutter/material.dart';
import 'package:pandora_gaming/constants/color.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';

class MainButtonDesign extends StatelessWidget {
  final String title;
  final Widget icon;
  final bool isLeft;
  final String link;

  const MainButtonDesign({
    required this.title,
    required this.icon,
    this.isLeft = false,
    required this.link,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        final screenWidth = MediaQuery.of(context).size.width;
        double buttonWidth = 350;
        double fontSize = 30;

        if (sizingInformation.deviceScreenType == DeviceScreenType.mobile) {
          buttonWidth = screenWidth;
          fontSize = 25;
        } else if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
          buttonWidth = screenWidth / 2;
          fontSize = 20;
        }

        return ElevatedButton(
          onPressed: _launchURL,
          style: ElevatedButton.styleFrom(
            primary: kWhite,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0.0),
            ),
            elevation: 0,
          ),
          child: SizedBox(
            width: buttonWidth,
            height: 150,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                isLeft
                    ? Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: icon,
                      )
                    : Container(),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: fontSize,
                    color: kBlack,
                  ),
                ),
                Container(width: isLeft ? 0 : 15),
                isLeft ? Container() : icon,
              ],
            ),
          ),
        );
      },
    );
  }

  void _launchURL() async {
    if (!await launch(link)) throw 'Could not launch $link';
  }
}
