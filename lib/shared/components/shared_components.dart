import 'package:flutter/material.dart';
import 'package:task_2/shared/style/color.dart';
import 'package:task_2/shared/style/style.dart';

// Button in CalcScreen
Widget numberButton({
  @required String num,Function function
}) =>
    Padding(
      padding: const EdgeInsets.only(bottom: 20, right: 39),
      child: Container(
        width: 39,
        height: 38,
        decoration: BoxDecoration(
            color: backgroundScreen,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [shadow_5]),
        child: IconButton(
          icon: Text(
            num,
            style: TextStyle(
              fontFamily: 'Regular',
              fontSize: 19,
              color: textColor_1,
            ),
            textAlign: TextAlign.center,
          ),
          onPressed: function,
        ),
      ),
    );

// Button in LoginScreen
Widget buttonIcon(
        {@required double width,
        @required double height,
        @required String urlImage}) =>
    Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: backgroundScreen,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [shadow_5]),
      child: IconButton(
          icon: Image(
            image: AssetImage(urlImage),
            height: 12,
            width: 14,
          ),
          onPressed: () {}),
    );

//
// build circle in Scaffold Background
Widget buildPositioned(
        {@required double left,
        @required double right,
        @required double top,
        @required double bottom,
        @required double width,
        @required double height,
        @required double radius,
        @required BoxShadow shadow}) =>
    Positioned(
        left: left,
        right: right,
        top: top,
        bottom: bottom,
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
              color: backgroundScreen,
              borderRadius: BorderRadius.circular(radius),
              boxShadow: [shadow]),
        ));



//  Row of three Button
Widget buildRowOfButton(
        {@required String txt_1,
        @required String txt_2,
        @required String txt_3,
        @required Function function_1,
        @required Function function_2,
        @required Function function_3,

        }) =>
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        numberButton(num: txt_1,function:function_1 ),
        numberButton(num: txt_2,function: function_2 ),
        numberButton(num: txt_3,function:function_3),
      ],
    );



Widget drawerText({@required txt,@required Function function})=>Padding(
  padding: const EdgeInsets.only(top: 25),
  child: GestureDetector(
      onTap: function,
      child: Text(
        txt,
        style: TextStyle(
          fontFamily: 'AdobeBold',
            color: Colors.black87.withOpacity(.8), fontSize: 20),
      )),
);


Widget buildButton(
    {@required text,
      @required double width,
      @required double height,
      @required Function function}) =>
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        width: double.infinity,
        height: height,
        decoration: BoxDecoration(
            color: Color(0xFFA35FE9),
            borderRadius: BorderRadius.all(Radius.circular(18)),
            boxShadow: [
              BoxShadow(
                color: Colors.purple[200],
                blurRadius: 25,
                offset: Offset(0,15)
              ),
            ]),
        child: TextButton(
          onPressed: function,
          child: Text(

            text,
            style: TextStyle(
              fontFamily: 'AdobeRegular',
                fontSize: 18, color: Colors.white),
          ),
        ),
      ),
    );
