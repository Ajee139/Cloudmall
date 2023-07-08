import 'package:cloudmall_africa_clone/Screens/HomePageAnimation.dart';
import 'package:cloudmall_africa_clone/Screens/Homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Cloudmall());
}

class Cloudmall extends StatelessWidget {
  const Cloudmall({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePageAnimation(),
    );
  }
}
