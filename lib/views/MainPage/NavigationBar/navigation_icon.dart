import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class NavigationIcon extends StatelessWidget {
  final Widget icon;
  final String link;

  const NavigationIcon({required this.icon, required this.link, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: _launchURL,
      icon: icon,
    );
  }

  void _launchURL() async {
    if (!await launch(link)) throw 'Could not launch $link';
  }
}
