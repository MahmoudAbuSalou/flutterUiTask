import 'package:flutter/material.dart';
import 'package:task_2/shared/style/color.dart';

BoxShadow shadow_1 = BoxShadow(
    color: Colors.grey[500],
    offset: Offset(4, 4),
    blurRadius: 15,
    spreadRadius: 1);
BoxShadow shadow_2 = BoxShadow(
    color: Colors.white,
    offset: Offset(-4, -4),
    blurRadius: 15,
    spreadRadius: 1);
BoxShadow shadow_3 = BoxShadow(
    color: shadowColor_1.withOpacity(1), blurRadius: 6, offset: Offset(0, -3));
BoxShadow shadow_4 = BoxShadow(
    color: shadowColor_1.withOpacity(1), blurRadius: 6, offset: Offset(0, 3));
BoxShadow shadow_5 = BoxShadow(
    color: Color(
      0x97A7C380,
    ).withOpacity(1),
    blurRadius: 11,
    offset: Offset(0, 3));
BoxShadow shadow_6 = BoxShadow(
  color: Color(0xFF01FF1B),
  blurRadius: 60,


);
BoxShadow shadow_7 = BoxShadow(
  color: Color(0xFFE10000),
  blurRadius: 100,


);
