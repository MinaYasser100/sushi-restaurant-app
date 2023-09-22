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
  static const textStyle18Light = TextStyle(
    color: textColor,
    fontSize: 18,
  );
  static const textStyle18Dark = TextStyle(
    color: kDarkColor,
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );
  static TextStyle googleTextStyle20 = GoogleFonts.dmSerifDisplay(
    fontSize: 20,
    color: textColor,
  );
  static TextStyle googleTextStyle18 = GoogleFonts.dmSerifDisplay(
    fontSize: 18,
    color: kDarkColor,
  );
  static TextStyle googleTextStyle28 = GoogleFonts.dmSerifDisplay(
    fontSize: 28,
  );
  static const textStyle14 = TextStyle(
    fontSize: 14.0,
    color: kMideumGrey,
    height: 2.0,
  );
}
