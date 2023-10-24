import 'package:flutter/material.dart';

class Mobile extends StatefulWidget {
  const Mobile({super.key});

  @override
  State<Mobile> createState() => _MobileState();
}

class _MobileState extends State<Mobile> with SingleTickerProviderStateMixin {
  late Animation animation,
      delayedAnimation,
      muchDelayedAnimation,
      rightToLeftAnimation;
  late AnimationController animationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController =
        AnimationController(duration: Duration(seconds: 4), vsync: this);
    animation = Tween(begin: -1.0, end: 0.0).animate(CurvedAnimation(
        parent: animationController, curve: Curves.fastOutSlowIn));
    delayedAnimation = Tween(begin: -1.0, end: 0.0).animate(CurvedAnimation(
        parent: animationController,
        curve: Interval(0.5, 1.0, curve: Curves.fastOutSlowIn)));
    muchDelayedAnimation = Tween(begin: -1.0, end: 0.0).animate(CurvedAnimation(
        parent: animationController,
        curve: Interval(0.75, 1.0, curve: Curves.fastOutSlowIn)));
    rightToLeftAnimation = Tween(begin: 1.0, end: -0.0).animate(CurvedAnimation(
        parent: animationController,
        curve: Interval(0.2, 1.0, curve: Curves.fastOutSlowIn)));
  }

  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    animationController.forward();

    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: AnimatedBuilder(
          animation: animationController,
          builder: (BuildContext context, child) {
            Widget firstAnimation = Container(
              child: Image.asset(
                "images/android cloud mall image 12.png",
                height: 400,
                width: 400,
                fit: BoxFit.contain,
              ),
            );
            return Scaffold(
              appBar: AppBar(),
              body: Container(
                padding: EdgeInsets.all(20),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(width: 10),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Cloudmall\n Africa",
                              style: TextStyle(
                                  color: Colors.blueAccent,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                MaterialButton(
                                  color: Colors.blueAccent,
                                  shape: RoundedRectangleBorder(
                                      side: BorderSide.none,
                                      borderRadius:
                                          BorderRadius.circular(15.0)),
                                  onPressed: () {},
                                  child: Text(
                                    "Home",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                MaterialButton(
                                    color: Colors.blueAccent,
                                    shape: RoundedRectangleBorder(
                                        side: BorderSide.none,
                                        borderRadius:
                                            BorderRadius.circular(15.0)),
                                    onPressed: () {},
                                    child: Text(
                                      "About",
                                      style: TextStyle(color: Colors.white),
                                    )),
                                SizedBox(width: 30),
                                MaterialButton(
                                    color: Colors.blueAccent,
                                    shape: RoundedRectangleBorder(
                                        side: BorderSide.none,
                                        borderRadius:
                                            BorderRadius.circular(15.0)),
                                    onPressed: () {},
                                    child: Text(
                                      "FAQs",
                                      style: TextStyle(color: Colors.white),
                                    )),
                                SizedBox(
                                  width: 30,
                                )
                              ],
                            )
                          ]),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Transform(
                            transform: Matrix4.translationValues(
                                animation.value * width, 0.0, 0.0),
                            child: Container(
                              padding: EdgeInsets.all(20),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    child: Text(
                                        "Shop With Friends\n and Pay Less",
                                        style: TextStyle(
                                            color: Colors.blue,
                                            fontWeight: FontWeight.bold,
                                            fontStyle: FontStyle.italic,
                                            fontSize: 45)),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Transform(
                                    transform: Matrix4.translationValues(
                                        delayedAnimation.value * width,
                                        0.0,
                                        0.0),
                                    child: Container(
                                      child: Text(
                                        "We enable you reduce the cost of your grocery purchases\n by shopping in groups with family and friends",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 40,
                                  ),
                                  Transform(
                                    transform: Matrix4.translationValues(
                                        rightToLeftAnimation.value * width,
                                        0.0,
                                        0.0),
                                    child: AnimatedSwitcher(
                                      duration: Duration(seconds: 5),
                                      child: firstAnimation,
                                    ),
                                  ),
                                  SizedBox(height: 40.0),
                                  Transform(
                                    transform: Matrix4.translationValues(
                                        muchDelayedAnimation.value * width,
                                        0.0,
                                        0.0),
                                    child: Container(
                                      child: Row(children: [
                                        MaterialButton(
                                          color: Colors.blueAccent,
                                          shape: RoundedRectangleBorder(
                                              side: BorderSide.none,
                                              borderRadius:
                                                  BorderRadius.circular(15.0)),
                                          onPressed: () {},
                                          child: Row(
                                            children: [
                                              Text(
                                                "Download",
                                                style: TextStyle(fontSize: 25),
                                              ),
                                              Icon(Icons.apple),
                                              Icon(Icons.play_arrow)
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          width: 30,
                                        ),
                                        MaterialButton(
                                        
                                            color: Colors.blueAccent,
                                            shape: RoundedRectangleBorder(
                                                side: BorderSide.none,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        15.0)),
                                            onPressed: () {},
                                            child: Row(
                                              children: [
                                                Text(
                                                  "WhatsApp",
                                                  style:
                                                      TextStyle(fontSize: 25),
                                                ),
                                                Icon(Icons.wechat)
                                              ],
                                            ))
                                      ]),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
