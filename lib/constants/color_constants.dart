import 'package:flutter/material.dart';

class ColorConstants {
  static const Color backGroundColor = Colors.white;

  static const Color successColor = Color(0xff5C9E11);
  static const Color darkColor = Color(0xff181D24);
  static const Color lightOrange = Color(0xffFFEBEC);
  static const Color swatch7 = Color(0xfffc3c37);
  static const Color swatch6 = Color(0xffc8b9c3);
  static const Color swatch5 = Color(0xff30323c);
  static const Color swatch4 = Color(0xff9e97ac);
  static const Color swatch3 = Color(0xffaab1cb);
  static const Color swatch2 = Color(0xffdebdcd);
  static const Color swatch1 = Color(0xfff5f3f6);
  static const Color greyColor = Color(0xff9B9B9B);
  static const Color contentBack = Color(0xFFFFF5EE);
  static const Color errorColor = Color.fromRGBO(255, 33, 33,1);

  static const MaterialColor primaryColor = MaterialColor(
    0xFFFFFFFF,
    <int, Color>{
      50: Color.fromRGBO(255, 255, 255, .1),
      100: Color.fromRGBO(255, 255, 255, .2),
      200: Color.fromRGBO(255, 255, 255, .3),
      300: Color.fromRGBO(255, 255, 255, .4),
      400: Color.fromRGBO(255, 255, 255, .5),
      500: Color.fromRGBO(255, 255, 255, .6),
      600: Color.fromRGBO(255, 255, 255, .7),
      700: Color.fromRGBO(255, 255, 255, .8),
      800: Color.fromRGBO(255, 255, 255, .9),
      900: Color.fromRGBO(255, 255, 255, 1),
    },
  );

  static const MaterialColor accentColor = MaterialColor(
    0xFFfc3c37,
    <int, Color>{
      50: Color(0x03fc3c37),
      100: Color(0x1Afc3c37),
      200: Color(0x33fc3c37),
      300: Color(0x4Dfc3c37),
      400: Color(0x66fc3c37),
      500: Color(0x80fc3c37),
      600: Color(0x99fc3c37),
      700: Color(0xB3fc3c37),
      800: Color(0xCCfc3c37),
      900: Color(0xFFfc3c37),
    },
  );
}
