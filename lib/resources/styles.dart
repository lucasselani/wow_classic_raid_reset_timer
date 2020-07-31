import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wow_classic_raid_reset_timer/model/wow_class.dart';
import 'package:wow_classic_raid_reset_timer/resources/colors.dart';

class Styles {
  static TextStyle label({biggerFont = false}) => GoogleFonts.lato(
        fontWeight: FontWeight.w400,
        fontSize: biggerFont ? 14 : 12,
        color: Colors.black45,
      );

  static TextStyle title({biggerFont = false}) => GoogleFonts.lato(
        fontWeight: FontWeight.w500,
        fontSize: biggerFont ? 18 : 16,
        color: Colors.black87,
      );

  static TextStyle watch = GoogleFonts.lato(
    fontWeight: FontWeight.w300,
    fontSize: 14,
    color: Colors.black,
  );

  static TextStyle form = GoogleFonts.lato(
    fontWeight: FontWeight.w400,
    fontSize: 18,
    color: AppColors.primaryColor,
  );

  static TextStyle button({Color color}) => GoogleFonts.lato(
        fontWeight: FontWeight.bold,
        fontSize: 16,
        color: color,
      );

  static TextStyle appBar({TextColor textColor}) => GoogleFonts.lato(
        fontWeight: FontWeight.bold,
        fontSize: 16,
        color: textColor == TextColor.dark ? Colors.black87 : Colors.white,
      );
}
