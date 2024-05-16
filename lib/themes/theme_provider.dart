import 'package:flutter/material.dart';
import 'package:food_pandas_food_delivery_app_with_backend/themes/dark_mode.dart';
import 'package:food_pandas_food_delivery_app_with_backend/themes/light_mode.dart';

class Themeprovider with ChangeNotifier {
  ThemeData _themeData = LightMode;

  ThemeData get themeData => _themeData;

  bool get isDarkMode => _themeData == darkMode;

  set themeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  void toggleTheme() {
    if (_themeData == LightMode) {
      themeData = darkMode;
    } else
      themeData = LightMode;
  }
}
