import "package:flutter/material.dart";

class HomePageAnimation extends StatefulWidget {
  HomePageAnimation({super.key});

  @override
  State<HomePageAnimation> createState() => _HomePageAnimationState();
}

class _HomePageAnimationState extends State<HomePageAnimation>
    with SingleTickerProviderStateMixin {
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
                height: 500,
                width: MediaQuery.of(context).size.width * 0.35,
                fit: BoxFit.contain,
              ),
            );
            /* Widget secondAnimation = Container(
              child: Image.asset(
                "images/android cloud mall image 12.png",
                height: 400,
                width: 400,
                fit: BoxFit.contain,
              ),
            );*/
            return Scaffold(
              appBar: AppBar(
                leading: Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Image.asset("images/logo.png",
                      height: MediaQuery.of(context).size.height * 3),
                ),
                actions: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      MaterialButton(
                        color: Colors.blueAccent,
                        shape: RoundedRectangleBorder(
                            side: BorderSide.none,
                            borderRadius: BorderRadius.circular(15.0)),
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
                              borderRadius: BorderRadius.circular(15.0)),
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
                              borderRadius: BorderRadius.circular(15.0)),
                          onPressed: () {},
                          child: Text(
                            "FAQs",
                            style: TextStyle(color: Colors.white),
                          )),
                      SizedBox(
                        width: 30,
                      )
                    ],
                  ),
                ],
              ),
              body: Container(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(width: 10),
                      SizedBox(height: 80),
                      Row(
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
                                                  BorderRadius.circular(15.0)),
                                          onPressed: () {},
                                          child: Row(
                                            children: [
                                              Text(
                                                "Order on WhatsApp",
                                                style: TextStyle(fontSize: 25),
                                              ),
                                              Icon(Icons.wechat)
                                            ],
                                          ),
                                        ),
                                      ]),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Transform(
                            transform: Matrix4.translationValues(
                                rightToLeftAnimation.value * width, 0.0, 0.0),
                            child: AnimatedSwitcher(
                              duration: Duration(seconds: 5),
                              child: firstAnimation,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 25),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          children: [
                            Image.asset(
                              "images/groups-2 (1).png",
                              height: MediaQuery.of(context).size.height * 0.5,
                              width: MediaQuery.of(context).size.width * 0.5,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.4,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Social Group Buying for Africans",
                                      style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.blueAccent)),
                                  SizedBox(height: 40),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Text(
                                              "Cloudmall is evolving the way people shop by offering a unique group buying experience. It empowers its users to aggregate their purchases by sharing exclusive deals with their loved ones on popular social media platforms such as WhatsApp, Facebook and\n Twitter. This gives them the ability to place larger orders\n versus buying alone, it unlocks lower prices and provides an engaging new way to shop."),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 40),
                                  Card(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20))),
                                    color: Color.fromARGB(230, 253, 248, 248),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Icon(
                                              Icons.check_box_rounded,
                                            ),
                                            SizedBox(width: 20),
                                            Text("Create your own groups",
                                                style: TextStyle(
                                                    color: Colors.blueAccent,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20)),
                                          ],
                                        ),
                                        SizedBox(height: 30),
                                        Row(
                                          children: [
                                            SizedBox(width: 45),
                                            Text(
                                                "Create your own groups and invite your friends to join them",
                                                style: TextStyle(
                                                    color: Colors.black87,
                                                    fontWeight:
                                                        FontWeight.w600))
                                          ],
                                        ),
                                        SizedBox(height: 30)
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 25),
                                  Card(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20))),
                                    color: Color.fromARGB(230, 253, 248, 248),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Icon(
                                              Icons.check_box_rounded,
                                            ),
                                            SizedBox(width: 20),
                                            Text("Join existing groups",
                                                style: TextStyle(
                                                    color: Colors.blueAccent,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20)),
                                          ],
                                        ),
                                        SizedBox(height: 30),
                                        Row(
                                          children: [
                                            SizedBox(width: 45),
                                            Text(
                                              "Join existing groups",
                                              style: TextStyle(
                                                  color: Colors.black87,
                                                  fontWeight: FontWeight.w600),
                                            )
                                          ],
                                        ),
                                        SizedBox(height: 30)
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 40),
                      Container(
                        child: Column(children: [
                          Text("Why choose us?",
                              style: TextStyle(
                                  color: Colors.blueAccent,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.5,
                                height:
                                    MediaQuery.of(context).size.height * 0.75,
                                child: Padding(
                                  padding: const EdgeInsets.all(80.0),
                                  child: Image.asset(
                                    "images/shopper-in-phone.png",
                                  ),
                                ),
                              ),
                              Column(children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Container(
                                    height: 230,
                                    width: 230,
                                    child: Card(
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Column(
                                          children: [
                                            Icon(Icons.follow_the_signs),
                                            SizedBox(height: 15),
                                            Text("Reduced Cost",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.blueAccent)),
                                            SizedBox(height: 25),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  "We offer the best prices\n by offering products\n directly from the\nfarmers or\nmanufacturers",
                                                  style: TextStyle(
                                                      color: Colors.black87,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 230,
                                  width: 230,
                                  child: Card(
                                      child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Column(
                                      children: [
                                        Icon(Icons.follow_the_signs),
                                        SizedBox(height: 15),
                                        Text("Social trust",
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.blueAccent)),
                                        SizedBox(height: 25),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "A fun way to shop and \n save costs with your\n friends and family",
                                              style: TextStyle(
                                                  color: Colors.black87,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  )),
                                )
                              ]),
                              Column(children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 0, right: 10, top: 10, bottom: 10),
                                  child: Container(
                                    height: 230,
                                    width: 230,
                                    child: Card(
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Column(
                                          children: [
                                            Icon(Icons.follow_the_signs),
                                            SizedBox(height: 15),
                                            Text("Convenience",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.blueAccent)),
                                            SizedBox(height: 25),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  "We relieve our users\n from market hussle and\n save them shopping time",
                                                  style: TextStyle(
                                                      color: Colors.black87,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 230,
                                  width: 230,
                                  child: Card(
                                      child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Column(
                                      children: [
                                        Icon(Icons.follow_the_signs),
                                        SizedBox(height: 15),
                                        Text("Customer Service",
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.blueAccent)),
                                        SizedBox(height: 25),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "Providing the best\nsupport to all our\ncustomers 24 hours a\nday, 7 days a week",
                                              style: TextStyle(
                                                  color: Colors.black87,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  )),
                                )
                              ]),
                            ],
                          )
                        ]),
                      ),
                      Container(
                        child: Column(children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20, bottom: 30),
                            child: Text("Join the Cloudmall Africa Community",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blueAccent)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 50, right: 50),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(30.0),
                                  child: Container(
                                    height: 300,
                                    width: 270,
                                    child: Card(
                                        color:
                                            Color.fromARGB(230, 253, 248, 248),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(Icons.call_to_action),
                                            SizedBox(height: 20),
                                            Text(
                                              "Start shopping",
                                              style: TextStyle(
                                                  color: Colors.black87,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                            SizedBox(height: 20),
                                            Text(
                                                "Enjoy massive discounts by\nstarting a group purchase",
                                                style: TextStyle(
                                                    color: Colors.black87,
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.w500)),
                                            SizedBox(height: 25),
                                            Container(
                                              width: 200,
                                              child: MaterialButton(
                                                  color: Color.fromARGB(
                                                      230, 253, 248, 248),
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              30)),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(10.0),
                                                          child: Text(
                                                              "Shop now",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .blueAccent)),
                                                        ),
                                                        Icon(Icons.forward)
                                                      ]),
                                                  onPressed: () {}),
                                            )
                                          ],
                                        )),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(30.0),
                                  child: Container(
                                    height: 300,
                                    width: 270,
                                    child: Card(
                                        color:
                                            Color.fromARGB(230, 253, 248, 248),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(Icons.call_to_action),
                                            SizedBox(height: 20),
                                            Text(
                                              "Start shopping",
                                              style: TextStyle(
                                                  color: Colors.black87,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                            SizedBox(height: 20),
                                            Text(
                                                "Enjoy massive discounts by\nstarting a group purchase",
                                                style: TextStyle(
                                                    color: Colors.black87,
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.w500)),
                                            SizedBox(height: 25),
                                            Container(
                                              width: 200,
                                              child: MaterialButton(
                                                  color: Color.fromARGB(
                                                      230, 253, 248, 248),
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              30)),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(10.0),
                                                          child: Text(
                                                              "Shop now",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .blueAccent)),
                                                        ),
                                                        Icon(Icons.forward)
                                                      ]),
                                                  onPressed: () {}),
                                            )
                                          ],
                                        )),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(30.0),
                                  child: Container(
                                    height: 300,
                                    width: 270,
                                    child: Card(
                                        color:
                                            Color.fromARGB(230, 253, 248, 248),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(Icons.call_to_action),
                                            SizedBox(height: 20),
                                            Text(
                                              "Start shopping",
                                              style: TextStyle(
                                                  color: Colors.black87,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                            SizedBox(height: 20),
                                            Text(
                                                "Enjoy massive discounts by\nstarting a group purchase",
                                                style: TextStyle(
                                                    color: Colors.black87,
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.w500)),
                                            SizedBox(height: 25),
                                            Container(
                                              width: 200,
                                              child: MaterialButton(
                                                  color: Color.fromARGB(
                                                      230, 253, 248, 248),
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              30)),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(10.0),
                                                          child: Text(
                                                              "Shop now",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .blueAccent)),
                                                        ),
                                                        Icon(Icons.forward)
                                                      ]),
                                                  onPressed: () {}),
                                            )
                                          ],
                                        )),
                                  ),
                                )
                              ],
                            ),
                          )
                        ]),
                      ),
                      Container(
                        child: Column(children: [
                          Text("What our Users say",
                              style: TextStyle(
                                  color: Colors.blueAccent,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold)),
                          Padding(
                            padding: const EdgeInsets.only(left: 50, right: 50),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(30.0),
                                  child: Container(
                                    height: 400,
                                    width: 300,
                                    child: Card(
                                        color:
                                            Color.fromARGB(230, 253, 248, 248),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(Icons.call_to_action),
                                            SizedBox(height: 20),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(30.0),
                                              child: Text(
                                                "I have not had to go to the market to haggle prices since I started using CloudMall. My foodstuff comes in perfect condition and is delivered to me.",
                                                style: TextStyle(
                                                    color: Colors.black87,
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ),
                                            SizedBox(height: 25),
                                            Container(
                                                child: Row(
                                              children: [
                                                CircleAvatar(
                                                  backgroundColor:
                                                      Color.fromARGB(
                                                          255, 5, 83, 146),
                                                  radius: 40,
                                                  child: CircleAvatar(
                                                    radius: 37,
                                                    backgroundImage: AssetImage(
                                                        "images/female-stock.jpg"),
                                                  ),
                                                ),
                                                Text("Mrs Funmi Muyiwa",
                                                    style: TextStyle(
                                                        color: Colors.black87,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 20))
                                              ],
                                            ))
                                          ],
                                        )),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(30.0),
                                  child: Container(
                                    height: 400,
                                    width: 300,
                                    child: Card(
                                        color:
                                            Color.fromARGB(230, 253, 248, 248),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(Icons.call_to_action),
                                            SizedBox(height: 20),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(30.0),
                                              child: Text(
                                                "My colleague at work told me about Cloudmall, we have been buying foodstuff weekly as a group and the prices are ridiculously cheaper than the local market",
                                                style: TextStyle(
                                                    color: Colors.black87,
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ),
                                            SizedBox(height: 20),
                                            Container(
                                                child: Row(
                                              children: [
                                                CircleAvatar(
                                                  radius: 40,
                                                  backgroundColor:
                                                      Color.fromARGB(
                                                          255, 5, 83, 146),
                                                  child: CircleAvatar(
                                                    radius: 37,
                                                    backgroundImage: AssetImage(
                                                        "images/female-stock.jpg"),
                                                  ),
                                                ),
                                                Text("Mrs Aderonke Olu",
                                                    style: TextStyle(
                                                        color: Colors.black87,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 20))
                                              ],
                                            ))
                                          ],
                                        )),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(30.0),
                                  child: Container(
                                    height: 400,
                                    width: 300,
                                    child: Card(
                                        color:
                                            Color.fromARGB(230, 253, 248, 248),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(Icons.call_to_action),
                                            SizedBox(height: 20),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(30.0),
                                              child: Text(
                                                "More than anything CloudMall provides me convenience, I no longer have to go the market to buy foodstuff, as it can be overwhelming sometimes. I trust that I can get quality products at best prices",
                                                style: TextStyle(
                                                    color: Colors.black87,
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ),
                                            SizedBox(height: 25),
                                            Container(
                                                child: Row(
                                              children: [
                                                CircleAvatar(
                                                  radius: 40,
                                                  backgroundColor:
                                                      Color.fromARGB(
                                                          255, 5, 83, 146),
                                                  child: CircleAvatar(
                                                    radius: 37,
                                                    backgroundImage: AssetImage(
                                                        "images/female-stock.jpg"),
                                                  ),
                                                ),
                                                Text("Mrs Eunice Badejoko",
                                                    style: TextStyle(
                                                        color: Colors.black87,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 20))
                                              ],
                                            ))
                                          ],
                                        )),
                                  ),
                                )
                              ],
                            ),
                          )
                        ]),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  height: MediaQuery.of(context).size.height,
                                  width:
                                      MediaQuery.of(context).size.width * 0.5,
                                  child: Image.asset("images/android.png")),
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.80,
                                width: MediaQuery.of(context).size.width * 0.30,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    new Text(
                                        "Save up to 40% of your monthly food expenses with your friends and family!",
                                        style: TextStyle(
                                            fontSize: 30,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.blueAccent)),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 40, bottom: 40),
                                      child: Text(
                                          "Shop with friends and pay less",
                                          style: TextStyle(
                                              color: Colors.black87,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500)),
                                    ),
                                    Container(
                                      height: 50,
                                      width: 200,
                                      child: ElevatedButton(
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateColor.resolveWith(
                                                    (states) =>
                                                        Colors.blueAccent)),
                                        child: Row(
                                          children: [
                                            Text("Download",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20,
                                                    color: Colors.white)),
                                            Icon(Icons.apple_outlined,
                                                color: Colors.white),
                                            Text("|",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                            Icon(Icons.play_arrow_sharp)
                                          ],
                                        ),
                                        onPressed: () {},
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Container(
                                      height: 50,
                                      width: 200,
                                      child: ElevatedButton(
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateColor.resolveWith(
                                                    (states) =>
                                                        Colors.blueAccent)),
                                        onPressed: () {},
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text("Order on\nWhatsApp",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 15,
                                                    color: Colors.white)),
                                            SizedBox(width: 20),
                                            Icon(Icons.apple_outlined,
                                                color: Colors.white),
                                            Text("|",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                            Icon(Icons.wechat_sharp)
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ]),
                      ),
                      Container(
                        color: Colors.blueAccent,
                        height: MediaQuery.of(context).size.height * 0.5,
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height * 0.4,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.90,
                                      width: MediaQuery.of(context).size.width *
                                          0.25,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Image.asset(
                                              "images/logo-text-white.png",
                                              width: 250,
                                              height: 100),
                                          Text(
                                              "We shop for you whenever and wherever",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w400)),
                                          Text(
                                              "Cloudmall helps you reduce the cost of your grocery purchases by enabling you shop in groups with your friends",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w400))
                                        ],
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 40),
                                    child: Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.90,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.30,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text("Links",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.w500)),
                                            Text("About Us",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.w400)),
                                            Text("Privacy Policy",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.w400)),
                                            Text("Terms and Conditions",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.w400))
                                          ],
                                        )),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 40),
                                    child: Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.90,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.25,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text("Contact",
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.w500)),
                                            Row(
                                              children: [
                                                IconButton(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                        Icons.location_pin,
                                                        color: Colors.white)),
                                                Column(
                                                  children: [
                                                    Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width *
                                                              0.20,
                                                      child: Text(
                                                          "Head office: House 29,First Avenue, Ooni Crownland estate, off Ede road, Ile-Ife, Osun State",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 15,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400)),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                IconButton(
                                                    onPressed: () {},
                                                    icon: Icon(Icons.call,
                                                        color: Colors.white)),
                                                Column(
                                                  children: [
                                                    Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width *
                                                              0.20,
                                                      child: Text(
                                                          "+234 905 815 2076",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 15,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400)),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                IconButton(
                                                    onPressed: () {},
                                                    icon: Icon(Icons.email,
                                                        color: Colors.white)),
                                                Column(
                                                  children: [
                                                    Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width *
                                                              0.20,
                                                      child: Text(
                                                          "support@cloudmallAfrica",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 15,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400)),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ],
                                        )),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                    icon: Icon(Icons.facebook,
                                        color: Colors.white),
                                    onPressed: () {}),
                                IconButton(
                                    icon: Icon(Icons.linked_camera,
                                        color: Colors.white),
                                    onPressed: () {}),
                                IconButton(
                                    icon: Icon(Icons.biotech_rounded,
                                        color: Colors.white),
                                    onPressed: () {}),
                                IconButton(
                                    icon:
                                        Icon(Icons.camera, color: Colors.white),
                                    onPressed: () {}),
                                Text(
                                    "@2023, Cloudmall Africa. Allrights reserved")
                              ],
                            )
                          ],
                        ),
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
