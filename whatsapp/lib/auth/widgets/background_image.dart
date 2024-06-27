import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {
  final double height;
  final double width;
  const BackgroundImage({super.key, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: EdgeInsets.all(1),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage(
            "assets/back.jpg",
          ),
          fit: BoxFit.fitWidth,
          filterQuality: FilterQuality.low,
          opacity: 0.8,
        ),
      ),
    );
  }
}
