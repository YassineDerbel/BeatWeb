import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../constants/size.dart';

/* -- Light & Dark Outlined Button Themes -- */

class BOutlinedButtonTheme {
  BOutlinedButtonTheme._();

  /* -- Light Theme -- */
  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: const RoundedRectangleBorder(),
      foregroundColor: cSecondaryColor,
      side: const BorderSide(
        color: cSecondaryColor,
      ),
      padding: const EdgeInsets.symmetric(vertical: sButtonHeight),
    ),
  );

  /* -- Dark Theme -- */
  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: const RoundedRectangleBorder(),
      foregroundColor: cWhiteColor,
      side: const BorderSide(
        color: cWhiteColor,
      ),
      padding: const EdgeInsets.symmetric(vertical: sButtonHeight),
    ),
  );
}
