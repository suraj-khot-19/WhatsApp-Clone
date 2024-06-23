import 'package:flutter/material.dart';
import 'package:whatsapp/themes/dark_theme.dart';
import 'package:whatsapp/themes/light_theme.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData _themeData = lightTheme;
  //get theme
  ThemeData get themeData => _themeData;
  //check dark theme
  bool get isDarkTheme => _themeData == darkTheme;
  set themeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

//change theme
  void toggleTheme() {
    if (_themeData == lightTheme) {
      themeData = darkTheme;
    } else {
      themeData = lightTheme;
    }
  }
}
