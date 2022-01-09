import 'package:flutter/material.dart';
import 'package:pandora_gaming/constants/color.dart';
import 'package:responsive_builder/responsive_builder.dart';

class BoxTalent extends StatelessWidget {
  final Widget icon;
  final String title;
  final String description;

  const BoxTalent({
    required this.icon,
    required this.title,
    required this.description,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        double containerWidth = 400;

      if (sizingInformation.deviceScreenType == DeviceScreenType.mobile) {
        containerWidth = 250;
      } else if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
        containerWidth = 300;
      }

        return Container(
        width: containerWidth,
        height: 300,
        decoration: const BoxDecoration(
          color: kDarkBlue,
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: kNeonGreen,
                ),
                child: Center(child: icon),
              ),
              Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                description,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      );
  },
    );
  }
}
