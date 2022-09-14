import 'package:flutter/material.dart';

class AnimatedPos extends StatelessWidget {
  final double top;
  final double? left;
  final double? bottom;
  final double? right;
  final Widget child;
  const AnimatedPos({
    Key? key,
    required this.top,
    this.left,
    this.bottom,
    this.right,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      curve: Curves.ease,
      duration: const Duration(
        seconds: 1,
      ),
      top: top,
      left: left,
      bottom: bottom,
      right: right,
      child: child,
    );
  }
}
