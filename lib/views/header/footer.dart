import 'package:flutter/material.dart';
import 'package:pandora_gaming/constants/color.dart';
import 'package:pandora_gaming/utils/formatString.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              formatText(title: 'CONTACT', fontSize: 16),
              Container(height: 20),
              formatText(
                title: 'C. de Pallars, 73, 08018 Barcelona',
                fontSize: 16,
                color: kWhiteGrey,
                isBold: false,
              ),
              formatText(
                title: 'Spain',
                fontSize: 16,
                color: kWhiteGrey,
                isBold: false,
              ),
              formatText(
                title: 'jonathan.gomez@parallelab.es',
                fontSize: 16,
                color: kWhiteGrey,
                isBold: false,
              ),
            ],
          )
        ],
      ),
    );
  }
}
