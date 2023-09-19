import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi_restaurant_app/core/utils/constant.dart';

abstract class Styles {
  static TextStyle googleTextStyle32 = GoogleFonts.dmSerifDisplay(
    fontSize: 32,
    color: textColor,
  );
  static TextStyle googleTextStyle40 = GoogleFonts.dmSerifDisplay(
    fontSize: 40,
    color: textColor,
  );
  static const textStyle18 = TextStyle(
    color: textColor,
    fontSize: 18,
  );
}
