import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier {
  String currentLocale = 'en';
  ThemeMode currentTheme = ThemeMode.light;

  bool isLightTheme() {
    return currentTheme == ThemeMode.light;
  }

  String getMainBackGround() {
    return isLightTheme()
        ? 'assets/images/light_background.png'
        : 'assets/images/dark_background.png';
  }

  void changeTheme(ThemeMode newMode) {
    if (newMode == currentTheme) return;
    currentTheme = newMode;
    notifyListeners();
  }

  String getCurrentLocaleString() {
    return currentLocale == 'en' ? "English" : "العربيه";
  }

  void changeLanguage(String newLocale) {
    if (newLocale == currentLocale) return;
    currentLocale = newLocale;
    notifyListeners();
  }
}
