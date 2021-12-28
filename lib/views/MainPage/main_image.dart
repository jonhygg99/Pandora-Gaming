import 'package:flutter/material.dart';
import 'package:pandora_gaming/constants/path.dart';

class MainImage extends StatelessWidget {
  const MainImage(this.mainHeight, {Key? key}) : super(key: key);
  final double mainHeight;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: MediaQuery.of(context).size.width / 2 - 200,
      child: ColorFiltered(
        colorFilter: const ColorFilter.mode(Colors.white54, BlendMode.modulate),
        child: Image(
          image: const AssetImage(kImages + 'esport.jpeg'),
          alignment: Alignment.center,
          height: mainHeight - 150,
          width: MediaQuery.of(context).size.width / 2,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
