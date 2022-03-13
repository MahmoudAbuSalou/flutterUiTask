import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:task_2/shared/components/shared_components.dart';
import 'package:task_2/shared/style/color.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({Key key}) : super(key: key);

  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  bool status7 = false;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(bottomRight: Radius.circular(225)),
      child: Container(
        width: 280,
        child: Drawer(
          child: Container(
            color: backgroundScreen,
            child: Padding(
              padding: const EdgeInsets.only(top: 40, left: 30, right: 30),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    child: Container(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Image.asset(
                        'assets/img/womn.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  drawerText(txt: 'Profile', function: () {}),
                  drawerText(txt: 'Privacy Policy', function: () {}),
                  drawerText(txt: 'Terms', function: () {}),
                  switchButton(),
                  drawerText(txt: 'Mode', function: () {}),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: buildButton(
                        text: 'Logout',
                        height: 40,
                        width: 100,
                        function: () {}),
                  ),
                  Container(
                    height: 110,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Copyright \u00a9  2021 NetFarmy',
                          style: TextStyle(
                            fontFamily: 'AdobeRegular'
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 35,top: 10),
                          child: Text('All right reserved',style: TextStyle(
                              fontFamily: 'AdobeRegular'
                          ),),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget switchButton() => Padding(
      padding: const EdgeInsets.only(top: 30),
      child: FlutterSwitch(
          width: 60.0,
          height: 38.0,
          toggleSize: 28,
          value: status7,
          // borderRadius: 30.0,
          padding: 5.0,
          activeToggleColor: Colors.grey,
          inactiveToggleColor: Colors.purple,
          activeSwitchBorder: Border.all(
            color: Colors.grey,
            width: 2.0,
          ),
          inactiveSwitchBorder: Border.all(
            color: Colors.purple,
            width: 2.0,
          ),
          activeColor: backgroundScreen,
          inactiveColor: backgroundScreen,
          activeIcon: Padding(
            padding: const EdgeInsets.only(top: 1, left: 3),
            child: Text("D"),
          ),
          inactiveIcon: Padding(
            padding: const EdgeInsets.only(top: 1, left: 3),
            child: Text(
              "E",
              style: TextStyle(color: Colors.black),
            ),
          ),
          onToggle: (val) {
            setState(() {
              status7 = val;
              if (val) {
                // some code ...
              } else {
                // some code ...
              }
            });
          }));
}
