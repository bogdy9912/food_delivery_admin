import 'package:flutter/material.dart';

//const Color kColor = Color(0xFF383a47);
//const Color backgroundColor = Color(0xFF383A47);

ThemeData appThemeData(BuildContext context) {
  return ThemeData(
    /*  primaryColor: Colors.white,
    accentColor: const Color(0xFF292B36),
    textTheme: const TextTheme(
      headline5: TextStyle(color: Colors.white),
      headline6: TextStyle(color: Colors.white),
      subtitle1: TextStyle(color: Colors.white),
    ),
    backgroundColor: const Color(0xFF383A47),
    buttonColor: const Color(0xFF5969FF),
    hintColor: Colors.white.withOpacity(0.6),
    scaffoldBackgroundColor: const Color(0xFFEDF2FB),
    dialogBackgroundColor: const Color(0xFF292B36),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(const Color(0xFF5969FF))),
    ),*/
    appBarTheme: AppBarTheme.of(context).copyWith(
//      color: Colors.transparent,
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.black),
        textTheme: const TextTheme(headline6: TextStyle(color: Colors.black))),
  );
}
