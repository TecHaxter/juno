import 'package:juno/utils/utils.dart';
import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  static bool get isDark => AppEnvironment.isDark;

  static Color get theBlack => const Color(0xff000000);
  static Color get theWhite => const Color(0xffFFFFFF);

  static Color get theDark => const Color(0xff454545);
  // static Color get darkBackground => const Color(0xff11141C);

  static Color get thePurple => const Color(0xffD2BBF2);
  static Color get theOrange => const Color(0xffFFDA7A);
}
