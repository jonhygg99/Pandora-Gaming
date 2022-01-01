import 'package:flutter/material.dart';
import 'package:pandora_gaming/constants/color.dart';
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
    return ElevatedButton(
      onPressed: _launchURL,
      style: ElevatedButton.styleFrom(
        primary: kWhite,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0.0),
        ),
        elevation: 0,
      ),
      child: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Row(
          children: [
            isLeft
                ? Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: icon,
            )
                : Container(),
            Text(
              title,
              style: const TextStyle(fontSize: 30, color: kBlack),
            ),
            Container(width: isLeft ? 0 : 15),
            isLeft ? Container() : icon
          ],
        ),
      ),
    );
  }

  void _launchURL() async {
    if (!await launch(link)) throw 'Could not launch $link';
  }
}
