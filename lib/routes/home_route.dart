part of 'routes.dart';

class HomeRoute {
  static const homeLeading = '/';
  static const homeScreen = homeLeading + 'homeScreen';
  static final homeRoutes = <String>{homeScreen};

  static Widget getPage(String currentRoute, Object? args) {
    Widget child;
    switch (currentRoute) {
      case HomeRoute.homeScreen:
        // child = RouteArguments.misTypedArgsRoute<homeHomeArgs>(args);
        child = HomeScreen();
        break;
      default:
        child = PageNotFoundScreen();
    }
    return child;
  }
}
