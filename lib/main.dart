import 'package:flutter/material.dart';
import 'package:islami_c6_sat/home/home_screen.dart';
import 'package:islami_c6_sat/home/quran/sura_details.dart';
import 'package:islami_c6_sat/my_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyTheme.lightTheme,
      routes: {
        HomeScreen.routeName: (_) => HomeScreen(),
        SuraDetailsScreen.routeName: (_) => SuraDetailsScreen()
      },
      initialRoute: HomeScreen.routeName,
    );
  }
}
