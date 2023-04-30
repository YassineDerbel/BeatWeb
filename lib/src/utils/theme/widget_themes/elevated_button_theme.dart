import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../constants/size.dart';

/* -- Light & Dark Elevated Button Theme -- */

class BElevatedButtonTheme {
  BElevatedButtonTheme._();

  /* -- Light Theme -- */
  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      shape: const RoundedRectangleBorder(),
      foregroundColor: cWhiteColor,
      backgroundColor: cSecondaryColor,
      side: const BorderSide(color: cSecondaryColor),
      padding: const EdgeInsets.symmetric(vertical: sButtonHeight),
    ),
  );

  /* -- Dark Theme -- */

  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      shape: const RoundedRectangleBorder(),
      foregroundColor: cSecondaryColor,
      backgroundColor: cWhiteColor,
      side: const BorderSide(color: cSecondaryColor),
      padding: const EdgeInsets.symmetric(vertical: sButtonHeight),
    ),
  );

  // -- Station Selection Button -- * /
}
