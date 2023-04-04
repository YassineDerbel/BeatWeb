import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../constants/size.dart';

/* -- Light & Dark Outlined Button Themes -- */

class BOutlinedButtonTheme {
  BOutlinedButtonTheme._();

  /* -- Light Theme -- */
  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(),
      foregroundColor: cSecondaryColor,
      side: BorderSide(
        color: cSecondaryColor,
      ),
      padding: EdgeInsets.symmetric(vertical: sButtonHeight),
    ),
  );

  /* -- Dark Theme -- */
  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(),
      foregroundColor: cWhiteColor,
      side: BorderSide(
        color: cWhiteColor,
      ),
      padding: EdgeInsets.symmetric(vertical: sButtonHeight),
    ),
  );
}
