import 'package:flutter/material.dart';
import 'package:juno/views/views.dart';

class RouteArguments {
  RouteArguments._();

  static Widget misTypedArgsRoute<T>(Object args) {
    return PageNotFoundScreen();
  }
}
