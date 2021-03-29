import 'package:flutter/material.dart';
import 'package:mlearning/utils/constanta_colors.dart';

ThemeData theme() {
  return ThemeData(
    primaryColor: kPrimary,
    scaffoldBackgroundColor: kWhite,
    appBarTheme: appBarTheme(),
    textTheme: textTheme(),
    fontFamily: "Poppins",
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

TextTheme textTheme() {
  return TextTheme(
      button:
          TextStyle(color: kWhite, fontSize: 18.0, fontWeight: FontWeight.w500),
      bodyText1: TextStyle(color: kText1),
      bodyText2: TextStyle(color: kText2));
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
      color: kWhite,
      brightness: Brightness.light,
      elevation: 0,
      iconTheme: IconThemeData(color: kPrimary, size: 24.0),
      textTheme: textTheme());
}
