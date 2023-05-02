import 'package:flutter/material.dart';

class MyTheme {
  static const Color bgdark = Color(0xff070417);
  static const Color bglight = Color(0xffFAFAFF);
  static const Color sbgdark = Color(0xff18152C);
  static const Color color1 = Color(0xff9B51E0);
  static const Color color2 = Color(0xffFFA656);
  static const Color color3 = Color(0xffFD5B71);
  static const Color color4 = Color(0xff07E092);
  static const Color icon1 = Color(0xff07E092);
  static const Color icon2 = Color(0xff3D4ABA);
  static const RadialGradient clock =
      RadialGradient(colors: [Color(0xff7012CE), Color(0xffFFFFFF)]);

  static final ThemeData lightTheme = ThemeData(
    primarySwatch: Colors.deepPurple,
    backgroundColor: bglight,
    scaffoldBackgroundColor: bglight,
    appBarTheme: AppBarTheme(
      color: bglight,
      iconTheme: const IconThemeData(color: Colors.black),
      toolbarTextStyle: const TextTheme(
        headline6: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ).bodyText2,
      titleTextStyle: const TextTheme(
        headline6: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ).headline6,
    ),
    iconTheme: const IconThemeData(
      color: icon1,
    ),
    textTheme: const TextTheme(
      bodyText1: TextStyle(color: Colors.black),
      bodyText2: TextStyle(color: Colors.grey),
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: color2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
    cardTheme: CardTheme(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: Colors.white,
      filled: true,
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: color1),
        borderRadius: BorderRadius.circular(10),
      ),
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    primarySwatch: Colors.blue,
    brightness: Brightness.dark,
    backgroundColor: bgdark,
    scaffoldBackgroundColor: bgdark,
    appBarTheme: AppBarTheme(
      color: sbgdark,
      iconTheme: const IconThemeData(color: Colors.white),
      toolbarTextStyle: const TextTheme(
        headline6: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ).bodyText2,
      titleTextStyle: const TextTheme(
        headline6: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ).headline6,
    ),
    iconTheme: const IconThemeData(
      color: icon1,
    ),
    textTheme: const TextTheme(
      bodyText1: TextStyle(color: Colors.white),
      bodyText2: TextStyle(color: Colors.grey),
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: color2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
    cardTheme: CardTheme(
      color: sbgdark,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: sbgdark,
      filled: true,
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: color1),
        borderRadius: BorderRadius.circular(10),
      ),
    ),
  );
}
