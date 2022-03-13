import 'package:flutter/material.dart';
import 'package:neumorphic_container/neumorphic_container.dart';
import 'package:task_2/shared/components/shared_components.dart';
import 'package:task_2/shared/style/color.dart';
import 'package:task_2/shared/style/style.dart';

// ignore: must_be_immutable
class LoginScreen extends StatefulWidget {
  String text;

  String urlImg;

  LoginScreen({this.text, this.urlImg});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundScreen.withOpacity(1),
      body: Stack(children: [
        buildPositioned(
            right: -67,
            left: null,
            bottom: -71,
            top: null,
            width: 160,
            height: 159,
            radius: 80,
            shadow: shadow_3),
        buildPositioned(
            right: null,
            left: -44,
            bottom: 144,
            top: null,
            width: 97,
            height: 96,
            radius: 48,
            shadow: shadow_4),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25, top: 26, right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buttonIcon(
                      width: 39, height: 38, urlImage: 'assets/img/menu.png'),
                  Container(
                    width: 106,
                    height: 21,
                    child: Image.asset(
                      'assets/logo/logo.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  buttonIcon(
                      width: 39, height: 38, urlImage: 'assets/img/Union.png'),
                ],
              ),
            ),
            SizedBox(
              height: 73,
            ),
            Center(
              child: Text(
                "Welcome back\n dear asma",
                // style: GoogleFonts.poppins(
                //   fontWeight: FontWeight.bold,
                //     color: textColor_1,
                //     fontSize: 22,
                // ),
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: textColor_1,
                  fontSize: 22,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 41,
            ),
            NeumorphicContainer(
              primaryColor: Colors.grey[300],
              spread: 1,
              height: 172,
              width: 172,
              borderRadius: 25,
              curvature: Curvature.concave,
              borderColor: backgroundScreen.withOpacity(1),
              borderThickness: 2,
              child: Center(
                child: Container(
                  width: 76,
                  height: 75,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      shadow_1,
                      shadow_2,
                    ],
                  ),
                  child: IconButton(
                      onPressed: () {
                        widget.text == 'Login'
                            ? setState(() {
                                //some code ....
                                Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                        builder: (context) => LoginScreen(
                                            text: 'Logout',
                                            urlImg: 'assets/img/icon.png')));
                              })
                            : setState(() {
                                //some code ....
                                Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                        builder: (context) => LoginScreen(
                                            text: 'Login',
                                            urlImg: 'assets/img/login.png')));
                              });
                      },
                      icon: Container(
                          decoration: widget.text == 'Login'
                              ? BoxDecoration(boxShadow: [shadow_6])
                              : null,
                          child: Image.asset(widget.urlImg.toString()))),
                ),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Center(
              child: Text(
                widget.text,
                style: TextStyle(
                  fontFamily: 'SemiBold',
                  color: textColor_1,
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
