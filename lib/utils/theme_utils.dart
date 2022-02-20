import 'package:flutter/material.dart';
import 'package:web_demo/constants/color_constants.dart';

class ThemeUtils {
  static ThemeData lightTheme = ThemeData(
    fontFamily: 'Lato',
    backgroundColor: ColorConstants.backGroundColor,
    colorScheme: ColorScheme(
        primary: ColorConstants.primaryColor,
        primaryVariant: ColorConstants.primaryColor.shade500,
        secondary: ColorConstants.accentColor,
        secondaryVariant: ColorConstants.accentColor.shade500,
        surface: ColorConstants.backGroundColor,
        background: ColorConstants.backGroundColor,
        error: ColorConstants.errorColor,
        onPrimary: ColorConstants.primaryColor.shade200,
        onSecondary: ColorConstants.accentColor.shade200,
        onSurface: ColorConstants.backGroundColor,
        onBackground: ColorConstants.backGroundColor,
        onError: ColorConstants.errorColor,
        brightness: Brightness.light),
    textTheme: const TextTheme(
      headline1: TextStyle(
          color: ColorConstants.darkColor, fontWeight: FontWeight.bold),
      headline2: TextStyle(
          color: ColorConstants.darkColor, fontWeight: FontWeight.bold),
      headline3: TextStyle(
          color: ColorConstants.darkColor, fontWeight: FontWeight.bold),
      headline4: TextStyle(
          color: ColorConstants.darkColor, fontWeight: FontWeight.bold),
      headline5: TextStyle(
          color: ColorConstants.darkColor, fontWeight: FontWeight.bold),
      headline6: TextStyle(
          color: ColorConstants.darkColor, fontWeight: FontWeight.bold),
      subtitle1: TextStyle(
          color: ColorConstants.darkColor, fontWeight: FontWeight.bold),
      subtitle2: TextStyle(color: ColorConstants.darkColor),
      bodyText1: TextStyle(
          color: ColorConstants.darkColor, fontWeight: FontWeight.bold),
      bodyText2: TextStyle(color: ColorConstants.darkColor),
      button: TextStyle(color: ColorConstants.darkColor),
      caption: TextStyle(color: ColorConstants.darkColor),
      overline: TextStyle(color: ColorConstants.darkColor),
    ),
    primaryIconTheme: const IconThemeData(color: ColorConstants.darkColor,size: 24),
    iconTheme: const IconThemeData(color: ColorConstants.darkColor,size: 24),
  );

  static ThemeData darkTheme = ThemeData(
    fontFamily: 'Lato',
    backgroundColor: ColorConstants.backGroundColor,
    colorScheme: ColorScheme(
        primary: ColorConstants.primaryColor,
        primaryVariant: ColorConstants.primaryColor.shade500,
        secondary: ColorConstants.accentColor,
        secondaryVariant: ColorConstants.accentColor.shade500,
        surface: ColorConstants.backGroundColor,
        background: ColorConstants.backGroundColor,
        error: ColorConstants.errorColor,
        onPrimary: ColorConstants.primaryColor.shade200,
        onSecondary: ColorConstants.accentColor.shade200,
        onSurface: ColorConstants.backGroundColor,
        onBackground: ColorConstants.backGroundColor,
        onError: ColorConstants.errorColor,
        brightness: Brightness.light),
  );
}
