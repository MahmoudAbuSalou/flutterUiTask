import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_2/modules/app_1/home/drawer.dart';
import 'package:task_2/shared/components/shared_components.dart';
import 'package:task_2/shared/style/color.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerScreen(),
      key: _globalKey,
      backgroundColor: Colors.grey[100],
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Positioned(
              left: -280,
              top: -165,
              child: Container(
                width: 400,
                height: 400,
                decoration: BoxDecoration(
                  color:homeDrawerColor,
                  borderRadius: BorderRadius.circular(200),
                ),
              )),
          Container(
            width: double.infinity,
            height: double.infinity,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8, bottom: 80, right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 45.0),
                          child: IconButton(
                            icon: Icon(
                              Icons.menu,
                              size: 28,
                            ),
                            color: Colors.white,
                            onPressed: () {
                              _globalKey.currentState.openDrawer();
                            },
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: Container(
                          width: 100,
                          height: 115,
                          child: Image.asset(
                            'assets/img/imgg.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      buildCard(
                          text: 'Register',
                          width: 180,
                          height: 100,
                          function: () {}),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      buildCard(
                          text: 'About Us',
                          width: 120,
                          height: 90,
                          function: () {}),
                      buildCard(
                          text: 'Contact',
                          width: 120,
                          height: 90,
                          function: () {}),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      buildCard(
                          text: 'Investment',
                          width: 120,
                          height: 90,
                          function: () {}),
                      buildCard(
                          text: 'Centers',
                          width: 120,
                          height: 90,
                          function: () {}),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: buildButton(

                text: 'Invite someone',
                height: 50,
                width: double.infinity,
                function: () {}),
          ),
        ],
      ),
    );
  }

  Widget buildCard(
      {@required text,
      @required double width,
      @required double height,
      @required Function function})=>Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: Colors.grey[200].withOpacity(1),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black45,
              blurRadius: 10,
              offset: Offset(2,2)
            ),
          ]),
      child: TextButton(
        child: Text(
          text,
          style: TextStyle(
            fontFamily: 'AdobeSemibold',
              fontSize: 20,
              color: Colors.deepPurpleAccent,
              fontWeight: FontWeight.w400),
        ),
        onPressed: function,
      ),
    );




}

