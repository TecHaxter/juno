import 'package:flutter/material.dart';

class PositionedTop extends StatelessWidget {
  final double top;
  final Widget child;
  const PositionedTop({
    Key? key,
    required this.top,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      child: child,
    );
  }
}
