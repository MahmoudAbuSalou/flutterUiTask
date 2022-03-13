import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import 'package:task_2/shared/components/shared_components.dart';
import 'package:task_2/shared/style/color.dart';
import 'package:task_2/shared/style/style.dart';

import 'cubit/confirm_cubit.dart';
import 'cubit/confirm_states.dart';
import '../login.dart';

// ignore: must_be_immutable
class CalcScreen extends StatelessWidget {
  TextEditingController txtController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ConfirmCubit(ConfirmInitialState()),
      child: BlocConsumer<ConfirmCubit, ConfirmState>(
          listener: (context, state) {},
          builder: (context, state) {
            ConfirmCubit cubit = ConfirmCubit.get(context);
            return Scaffold(
              backgroundColor: backgroundScreen.withOpacity(1),
              body: Stack(children: [
                buildPositioned(
                    right: null,
                    left: -49,
                    bottom: null,
                    top: -55,
                    width: 160,
                    height: 159,
                    radius: 80,
                    shadow: shadow_3),
                buildPositioned(
                    right: -104,
                    left: null,
                    bottom: null,
                    top: 56,
                    width: 160,
                    height: 159,
                    radius: 80,
                    shadow: shadow_4),
                Column(children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 25, top: 26, right: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 106,
                          height: 21,
                          child: Image.asset(
                            'assets/logo/logo.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 108,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 34),
                    child: Container(
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Welcome",
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: textColor_1,
                              fontSize: 24,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            "Lets get started",
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: textColor_1,
                              fontSize: 21,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 34, vertical: 2),
                    width: 350,
                    height: 51,
                    child: Neumorphic(
                      style: NeumorphicStyle(
                          boxShape: NeumorphicBoxShape.stadium(),
                          depth: NeumorphicTheme.embossDepth(context)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Center(
                          child: TextFormField(
                            controller: txtController,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: cubit.value.length > 0
                                  ? cubit.value
                                  : 'insert code',
                              hintStyle: TextStyle(
                                fontFamily: 'SemiBold',
                                color: Color(0xFF627CA8),
                                fontSize: 16,
                              ),
                              suffixIcon: Padding(
                                padding: const EdgeInsets.only(
                                    right: 22, top: 16, bottom: 16),
                                child: InkWell(
                                  onTap: () {
                                    if (cubit.value.length > 0)
                                      cubit.dellValue();
                                  },
                                  child: Image.asset(
                                    'assets/img/del.png',
                                    width: 31,
                                    height: 18,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  buildRowOfButton(
                      txt_1: '1',
                      txt_2: '2',
                      txt_3: '3',
                      function_1: () {
                        cubit.addValue(txt: '1');
                      },
                      function_2: () {
                        cubit.addValue(txt: '2');
                      },
                      function_3: () {
                        cubit.addValue(txt: '3');
                      }),
                  buildRowOfButton(
                      txt_1: '4',
                      txt_2: '5',
                      txt_3: '6',
                      function_1: () {
                        cubit.addValue(txt: '4');
                      },
                      function_2: () {
                        cubit.addValue(txt: '5');
                      },
                      function_3: () {
                        cubit.addValue(txt: '6');
                      }),
                  buildRowOfButton(
                      txt_1: '7',
                      txt_2: '8',
                      txt_3: '9',
                      function_1: () {
                        cubit.addValue(txt: '7');
                      },
                      function_2: () {
                        cubit.addValue(txt: '8');
                      },
                      function_3: () {
                        cubit.addValue(txt: '9');
                      }),
                  buildRowOfButton(
                      txt_1: '*',
                      txt_2: '0',
                      txt_3: '#',
                      function_1: () {
                        cubit.addValue(txt: '*');
                      },
                      function_2: () {
                        cubit.addValue(txt: '0');
                      },
                      function_3: () {
                        cubit.addValue(txt: '#');
                      }),
                  Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: GestureDetector(
                      onTap: () {
                        cubit.clearValue();
                      },
                      child: Text(
                        'Resend code',
                        style: TextStyle(
                            fontFamily: 'SemiBold',
                            color: textColor_1,
                            fontSize: 15,
                            decoration: TextDecoration.underline),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                ]),
                Positioned(
                  bottom: 17,
                  left: 100,
                  child: InkWell(
                    onTap: () {
                      // some code ....
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => LoginScreen(
                              text: 'Login', urlImg: 'assets/img/login.png')));
                    },
                    child: Container(
                      child: Center(
                          child: Text(
                        "confirm",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            color: textColor_1, fontSize: 22),
                        textAlign: TextAlign.center,
                      )),
                      width: 134,
                      height: 57,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
// color: backgroundScreen,
                        color: Colors.grey[300],
                        boxShadow: [
                          shadow_1,
                          shadow_2,
                        ],
                      ),
                    ),
                  ),
                ),
              ]),
            );
          }),
    );
  }
}
