import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import 'modules/app_1/home/home.dart';
import 'modules/app_2/confirm_codee/confirm_code.dart';
import 'modules/app_2/login.dart';






void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // TODO: implement initState
    SystemChrome.setEnabledSystemUIOverlays([]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
       // home: LoginScreen(text: 'Login',urlImg:'assets/img/login.png',),
        home: CalcScreen(),
       //  home: HomeScreen(),
    );
  }
}
