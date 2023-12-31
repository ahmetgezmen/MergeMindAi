// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:merge_mind_ai/utils/enums/theme_mod_string_enum.dart';

final class ThemeModeHelper {
  static ThemeMode getThemeMode(ThemeModeEnum themeModeEnum) {
    switch (themeModeEnum) {
      case ThemeModeEnum.light:
        return ThemeMode.light;
      case ThemeModeEnum.dark:
        return ThemeMode.dark;
      case ThemeModeEnum.system:
        return ThemeMode.system;
    }
  }
}
