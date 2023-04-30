import 'package:flutter/material.dart';

import '../../../constants/colors.dart';

class TTextFormFielTheme {
  TTextFormFielTheme._();

  static InputDecorationTheme lightIntputDecorationTheme =
      const InputDecorationTheme(
          border: OutlineInputBorder(),
          prefixIconColor: cSecondaryColor,
          floatingLabelStyle: TextStyle(color: cSecondaryColor),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: cSecondaryColor),
          ));

  static InputDecorationTheme darkInputDecorationTheme =
      const InputDecorationTheme(
          border: OutlineInputBorder(),
          prefixIconColor: cPrimaryColor,
          floatingLabelStyle: TextStyle(color: cPrimaryColor),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: cPrimaryColor),
          ));
}
