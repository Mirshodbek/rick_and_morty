import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class StatusBarColor extends StatelessWidget {
  final Widget child;
  final Color statusColor;

  const StatusBarColor(
      {Key? key, required this.child, required this.statusColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: statusColor,
      ),
      child: child,
    );
  }
}
