import 'package:google_fonts/google_fonts.dart';
import 'package:juno/data/constants/app_colors.dart';
import 'package:juno/utils/utils.dart';
import 'package:flutter/material.dart';

part 'dark_theme.dart';
part 'light_theme.dart';

ThemeData get themeData => AppEnvironment.isDark
    ? _LightTheme.lightThemeData
    : _LightTheme.lightThemeData;
