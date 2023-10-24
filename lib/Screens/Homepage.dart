import "package:cloudmall_africa_clone/Widgets/HomePageAnimation.dart";
import "package:cloudmall_africa_clone/Widgets/Mobile.dart";
import "package:flutter/material.dart";

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: ((context, constraints) {
      if (constraints.maxWidth > 1000) {
        return HomePageAnimation();
      } else {
        return Mobile();
      }
    }));
  }
}

/*class CloudMallHomePage extends StatelessWidget {
  const CloudMallHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(width: 10),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text(
                "Cloudmall\n Africa",
                style: TextStyle(
                    color: Colors.blueAccent, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Home",
                        style: TextStyle(
                            backgroundColor: Colors.blue, color: Colors.white),
                      )),
                  SizedBox(
                    width: 30,
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "About",
                        style: TextStyle(
                            backgroundColor: Colors.blue, color: Colors.white),
                      )),
                  SizedBox(width: 30),
                  ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "FAQs",
                        style: TextStyle(
                            backgroundColor: Colors.blue, color: Colors.white),
                      )),
                  SizedBox(
                    width: 30,
                  )
                ],
              )
            ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Shop With Friends\n and Pay Less",
                          style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                              fontSize: 45)),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "We enable you reduce the cost of your grocery purchases\n by shopping in groups with family and friends",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        children: [
                          ElevatedButton(
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
                          ElevatedButton(
                              onPressed: () {},
                              child: Row(
                                children: [
                                  Text(
                                    "Order on WhatsApp",
                                    style: TextStyle(fontSize: 25),
                                  ),
                                  Icon(Icons.wechat)
                                ],
                              ))
                        ],
                      )
                    ],
                  ),
                ),
                Image.asset(
                  "images/android cloud mall image 12.png",
                  height: 400,
                  width: 400,
                  fit: BoxFit.contain,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
*/