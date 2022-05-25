import 'package:flutter/material.dart';

const COLOR_BLACK = Color.fromRGBO(7, 7, 10, 1.0);
const COLOR_GREY = Color.fromRGBO(116, 134, 139, 1.0);
const COLOR_GREY_SHADE = Color.fromRGBO(28, 29, 33, 1.0);
const COLOR_GREY_DARK = Color.fromRGBO(25, 26, 31, 1.0);
const COLOR_WHITE = Colors.white;
const COLOR_LIGHT_GREY = Color.fromRGBO(248, 248, 249, 1.0);
const COLOR_ORANGE = Color.fromRGBO(243, 179, 98, 1.0);


const TextTheme TEXT_THEME_DEFAULT = TextTheme(
  headline1: TextStyle(color: COLOR_WHITE, fontWeight: FontWeight.w700, fontSize: 20),
  headline2: TextStyle(color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 18),
  headline3: TextStyle(color: COLOR_WHITE, fontWeight: FontWeight.w600, fontSize: 16),
  headline4: TextStyle(color: COLOR_GREY, fontWeight: FontWeight.w400, fontSize: 14),
  headline5: TextStyle(color: COLOR_ORANGE, fontWeight: FontWeight.w600, fontSize: 14),
  headline6: TextStyle(color: COLOR_GREY, fontWeight: FontWeight.w500, fontSize: 14),
  subtitle1: TextStyle(color: COLOR_WHITE, fontWeight: FontWeight.w500, fontSize: 14),
  subtitle2: TextStyle(color: COLOR_GREY_SHADE, fontWeight: FontWeight.w500, fontSize: 14),
  bodyText1: TextStyle(color: COLOR_GREY, fontWeight: FontWeight.w600, fontSize: 12),
  bodyText2: TextStyle(color: COLOR_BLACK, fontWeight: FontWeight.w500, fontSize: 12),
);