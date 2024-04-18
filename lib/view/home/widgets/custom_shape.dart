import 'package:flutter/material.dart';
import 'package:savings_machine_test/const%20/palette.dart';

class CustomShape extends StatelessWidget {
  const CustomShape({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: ContainerClipper(),
      child: Opacity(
        opacity: 0.5,
        child: Container(
          height: height * 0.3,
          width: width * 0.7,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Palette.trgrd1,
                Palette.trgrd3,
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ContainerClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(size.height * 0.8, size.width * .10);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, size.height * 0.1);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}
