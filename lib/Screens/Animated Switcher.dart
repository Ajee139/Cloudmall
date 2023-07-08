import "package:flutter/material.dart";

class Animatedwidget extends StatefulWidget {
  const Animatedwidget({super.key});

  @override
  State<Animatedwidget> createState() => _AnimatedwidgetState();
}

class _AnimatedwidgetState extends State<Animatedwidget> {
  @override
  Widget build(BuildContext context) {
    Widget firstAnimation = Container(
      child: Image.asset(
        "images/android cloud mall image 12.png",
        height: 400,
        width: 400,
        fit: BoxFit.contain,
      ),
    );
    return Scaffold();
  }
}
