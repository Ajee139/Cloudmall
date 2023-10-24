import 'package:cloudmall_africa_clone/Widgets/AllPages.dart';
import 'package:cloudmall_africa_clone/Widgets/HomePageAnimation.dart';
import 'package:cloudmall_africa_clone/Screens/Homepage.dart';
import 'package:cloudmall_africa_clone/Widgets/Mobile.dart';
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
      //home: HomePageAnimation(),
      //home: Mobile(),
      home: HomePage(),
      //home: AllPages(),
    );
  }
}
