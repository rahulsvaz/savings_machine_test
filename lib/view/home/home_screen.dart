import 'package:flutter/material.dart';
import 'package:savings_machine_test/view/home/widgets/custom_shape.dart';
import 'package:savings_machine_test/view/home/widgets/gradient_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          GradientContainer(height: height, width: width),
          Positioned(
            top: 0,
              left: width * 0.3,
              child: CustomShape(height: height, width: width)
              
              
              )
        ],
      ),
    );
  }
}
