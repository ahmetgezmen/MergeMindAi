// ignore_for_file: public_member_api_docs
import 'package:flutter/material.dart';
import 'package:merge_mind_ai/middlewares/splash_screeen.dart';
import 'package:merge_mind_ai/utils/enums/theme_mod_string_enum.dart';
import 'package:merge_mind_ai/utils/helper/theme_mode_helper.dart';
import 'package:merge_mind_ai/utils/theme/dark_theme.dart';
import 'package:merge_mind_ai/utils/theme/light_theme.dart';

class MergeMindAI extends StatelessWidget {
  const MergeMindAI({super.key, this.themeMode = ThemeModeEnum.system});

  final ThemeModeEnum themeMode;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: ThemeModeHelper.getThemeMode(themeMode),
        darkTheme: CustomDarkThemes.darkTheme,
        theme: CustomLightThemes.lightTheme,
        home: const SplashScreen(),
        );
  }
}
