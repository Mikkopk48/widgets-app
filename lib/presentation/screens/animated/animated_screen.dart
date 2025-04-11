import 'package:flutter/material.dart';
import 'dart:math' show Random;

class AnimatedScreen extends StatefulWidget {
  static const name = 'animated_screen';
  const AnimatedScreen({super.key});

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  double width = 50;
  double height = 50;
  Color color = Colors.indigo;
  double borderRadius = 20;
  double alpha = 100;
  double red = 100;
  double green = 100;
  double blue = 100;

  void changeShape() {
    final random = Random();
      color = Color.from(alpha: alpha,red: red, green: green, blue: blue);
      width = random.nextInt(300) + 50;
      height = random.nextInt(300) + 50;
      borderRadius = random.nextInt(50) + 0;
      red = random.nextInt(255) + 10;
      green = random.nextInt(255) + 10;
      blue = random.nextInt(255) + 10;
     setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Animated Container")),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 400),
          curve: Curves.bounceInOut,
          height: height <= 0 ? 100 : height,
          width: width <= 0 ? 100 : width,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: changeShape,
        child: const Icon(Icons.play_arrow_rounded),
      ),
    );
  }
}
