import 'package:flutter/material.dart';
import 'package:louag_express/src/utils/theme/widget_themes/elevated_button_theme.dart';
import 'package:louag_express/src/utils/theme/widget_themes/outlined_button_theme.dart';

import 'package:louag_express/src/utils/theme/widget_themes/text_theme.dart';

class LouageExpressTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: LouageExpressTextTheme.lightTextTheme,
    outlinedButtonTheme: BOutlinedButtonTheme.lightOutlinedButtonTheme,
    elevatedButtonTheme: BElevatedButtonTheme.lightElevatedButtonTheme,
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: LouageExpressTextTheme.darkTextTheme,
    outlinedButtonTheme: BOutlinedButtonTheme.darkOutlinedButtonTheme,
    elevatedButtonTheme: BElevatedButtonTheme.darkElevatedButtonTheme,
  );
}
