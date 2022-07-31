import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyTheme {
  static const Color colorGold = Color(0xFFB7935F);
  static const Color colorYellow = Color(0xFFFACC1D);
  static const Color colorNavy = Color(0xFF141A2E);
  static final ThemeData lightTheme = ThemeData(
      bottomSheetTheme: BottomSheetThemeData(backgroundColor: Colors.white),
      backgroundColor: colorGold,
      primaryColor: colorGold,
      progressIndicatorTheme: ProgressIndicatorThemeData(color: colorGold),
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
  static final ThemeData darkTheme = ThemeData(
      bottomSheetTheme: BottomSheetThemeData(backgroundColor: colorNavy),
      backgroundColor: colorNavy,
      primaryColor: colorYellow,
      progressIndicatorTheme: ProgressIndicatorThemeData(color: colorYellow),
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Colors.transparent,
          elevation: 0,
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 28)),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: colorYellow,
          unselectedItemColor: Colors.white,
          selectedIconTheme: IconThemeData(size: 36)),
      textTheme: TextTheme(
        bodyMedium: TextStyle(
          fontSize: 20,
          color: Colors.white,
        ),
        titleMedium: TextStyle(
          fontSize: 25,
          color: Colors.white,
        ),
      ));
}
