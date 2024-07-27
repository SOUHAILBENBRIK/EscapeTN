import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kid_ask/utils/constants.dart';

class AppTheme {
  static ThemeData getLightTheme() {
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Constants.mainColor),
      primaryColor: Constants.mainColor,
      textTheme: GoogleFonts.abelTextTheme(),
    );
  }
}
