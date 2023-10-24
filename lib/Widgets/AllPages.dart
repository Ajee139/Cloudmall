import 'package:cloudmall_africa_clone/Widgets/HomePageAnimation.dart';

import 'package:flutter/material.dart';

class AllPages extends StatefulWidget {
  const AllPages({super.key});

  @override
  State<AllPages> createState() => _AllPagesState();
}

class _AllPagesState extends State<AllPages> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: HomePageAnimation(),
    );
  }
}
