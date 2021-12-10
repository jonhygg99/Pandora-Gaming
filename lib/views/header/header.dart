import 'package:flutter/material.dart';
import 'package:pandora_gaming/constants/path.dart';
import 'package:pandora_gaming/utils/formatString.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        const ColorFiltered(
          colorFilter: ColorFilter.mode(Colors.white54, BlendMode.modulate),
          child: Image(
            image: AssetImage(kImages + 'esport.jpeg'),
            alignment: Alignment.center,
            height: 700,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        Column(
          children: [
            formatText(title: 'Become a professional player', fontSize: 40),
            Container(height: 20),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(shape: const StadiumBorder()),
              child: const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  'JOIN NOW',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
