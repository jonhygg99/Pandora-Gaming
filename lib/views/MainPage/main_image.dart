import 'package:flutter/material.dart';
import 'package:pandora_gaming/constants/path.dart';

class MainImage extends StatelessWidget {
  final double mainHeight;
  final double imageWidth;

  const MainImage({
    required this.mainHeight,
    required this.imageWidth,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ColorFiltered(
      colorFilter: const ColorFilter.mode(Colors.white54, BlendMode.modulate),
      child: Image(
        image: const AssetImage(kImages + 'esport.jpeg'),
        alignment: Alignment.center,
        height: mainHeight - 150,
        width: imageWidth,
        fit: BoxFit.cover,
      ),
    );
  }
}
