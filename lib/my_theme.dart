import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyTheme {
  static const Color primaryColor = Color(0xFFB7935F);
  static final ThemeData lightTheme = ThemeData(
      primaryColor: primaryColor,
      progressIndicatorTheme: ProgressIndicatorThemeData(color: primaryColor),
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.transparent,
          elevation: 0,
          titleTextStyle: TextStyle(color: Colors.black, fontSize: 28)),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white,
          selectedIconTheme: IconThemeData(size: 36)),
      textTheme: TextTheme(
        bodyMedium: TextStyle(
          fontSize: 20,
          color: Colors.black,
        ),
        titleMedium: TextStyle(
          fontSize: 25,
          color: Colors.black,
        ),
      ));
}
