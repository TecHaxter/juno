import 'package:flutter/material.dart';
import 'package:cupertino_back_gesture/cupertino_back_gesture.dart';
import 'package:juno/data/constants/constants.dart';
import 'package:juno/routes/routes.dart';
import 'package:juno/themes/themes.dart';
import 'package:juno/utils/utils.dart';

class JunoApp extends StatefulWidget {
  const JunoApp({Key? key}) : super(key: key);

  @override
  State<JunoApp> createState() => _JunoAppState();
}

class _JunoAppState extends State<JunoApp> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: AppEnvironment.appTheme,
      builder: (_, __, ___) {
        return ValueListenableBuilder(
          valueListenable: AppEnvironment.swipeWidth,
          builder: (_, double swipeWidth, ___) {
            return BackGestureWidthTheme(
              backGestureWidth: BackGestureWidth.fraction(swipeWidth),
              child: MaterialApp(
                color:
                    AppColors.isDark ? AppColors.theDark : AppColors.theWhite,
                builder: (context, child) {
                  final mediaQueryData = MediaQuery.of(context);
                  var ch = MediaQuery(
                    // Set the default textScaleFactor to 1.0 for
                    // the whole subtree.
                    data: mediaQueryData.copyWith(textScaleFactor: 1.0),
                    child: child!,
                  );
                  return ScrollConfiguration(
                    behavior: const ScrollBehaviorImpl(),
                    child: ch,
                  );
                },
                debugShowCheckedModeBanner: false,
                onGenerateRoute: Routes.onGenerateRoute,
                navigatorKey: AppEnvironment.rootNavigationKey,
                navigatorObservers: [
                  AppEnvironment.routeObserver,
                ],
                theme: themeData,
                initialRoute: HomeRoute.homeScreen,
              ),
            );
          },
        );
      },
    );
  }
}
