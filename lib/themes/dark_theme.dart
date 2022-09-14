part of 'themes.dart';

class _DarkTheme {
  static ThemeData darkThemeData = ThemeData(
    brightness: Brightness.dark,
    fontFamily: 'Gilroy',
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
    appBarTheme: AppBarTheme(color: AppColors.theDark),
    scaffoldBackgroundColor: AppColors.theDark,
    errorColor: AppColors.theOrange,
    focusColor: AppColors.thePurple,
    hoverColor: AppColors.theOrange,
    disabledColor: AppColors.theDark,
    primaryColorLight: AppColors.thePurple,
    backgroundColor: AppColors.theDark,
    scrollbarTheme: ScrollbarThemeData(
      thumbColor: MaterialStateProperty.all(AppColors.thePurple),
    ),
  );
}
