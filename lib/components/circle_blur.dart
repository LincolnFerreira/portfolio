import 'dart:ui';

import 'package:flutter/material.dart';

class CircleBlur extends StatefulWidget {
  final double verticalPercentage;
  final double horizontalPercentage;

  const CircleBlur({
    super.key,
    this.verticalPercentage = 0,
    this.horizontalPercentage = 0,
  });

  @override
  State<CircleBlur> createState() => _CircleBlurState();
}

class _CircleBlurState extends State<CircleBlur> {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final size = MediaQuery.of(context).size;

    double width = size.width;
    double height = size.height;
    return Positioned(
      top: height / 100 * widget.verticalPercentage,
      left: width / 100 * widget.horizontalPercentage,
      width: 300,
      height: 300,
      child: ImageFiltered(
        imageFilter: ImageFilter.blur(
            sigmaX: 90.0, sigmaY: 90.0), // Configuração do blur
        child: Container(
          width: 300,
          height: 400,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            gradient: SweepGradient(
              center: Alignment(0.0, 0.0),
              colors: [
                Color(0xFFA374CA),
                Color(0xFF72ACF3),
              ],
              tileMode: TileMode.clamp,
            ),
          ),
        ),
      ),
    );
  }
}
