


import 'package:flutter/material.dart';
import 'package:savings_machine_test/const%20/palette.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
          Palette.grd1,
          Palette.grd2,
          Palette.grd3,
          Palette.grd4,
        ]),
      ),
    );
  }
}
