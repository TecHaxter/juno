part of 'themes.dart';

class _LightTheme {
  static ThemeData lightThemeData = ThemeData(
    brightness: Brightness.light,
    textTheme: GoogleFonts.notoSansTextTheme(),
  ).copyWith(
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: {
        TargetPlatform.iOS: ZoomPageTransitionsBuilder(),
        TargetPlatform.android: ZoomPageTransitionsBuilder(),
      },
    ),
    colorScheme: const ColorScheme.light().copyWith(
      primary: AppColors.thePurple,
      secondary: AppColors.theOrange,
    ),
    toggleableActiveColor: AppColors.theOrange,
    appBarTheme: AppBarTheme(color: AppColors.theWhite),
    scaffoldBackgroundColor: AppColors.theWhite,
    // textTheme: TextTheme().copyWith(
    //   bodyText2: TextStyle().copyWith(color: AppColors.theBlack),
    // ),
    errorColor: AppColors.theOrange,
    focusColor: AppColors.thePurple,
    hoverColor: AppColors.theOrange,
    disabledColor: AppColors.theWhite,
    primaryColorLight: AppColors.thePurple,
    backgroundColor: AppColors.theWhite,
    scrollbarTheme: ScrollbarThemeData(
      thumbColor: MaterialStateProperty.all(AppColors.thePurple),
    ),
  );
}
