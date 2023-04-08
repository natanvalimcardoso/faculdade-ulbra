import 'package:flutter/material.dart';

import '../themes/themes.dart';

enum ThemeModeOption {
  light,
  dark,
}

class ThemeController extends ChangeNotifier {
  ThemeModeOption _themeModeOption = ThemeModeOption.light;

  ThemeModeOption get themeModeOption => _themeModeOption;

  set themeModeOption(ThemeModeOption value) {
    _themeModeOption = value;
    notifyListeners();
  }

  ThemeData get themeData {
    switch (_themeModeOption) {
      case ThemeModeOption.light:
        return lightTheme;
      case ThemeModeOption.dark:
        return darkTheme;
      default:
        return lightTheme;
    }
  }
}