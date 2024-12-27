import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobilescreenlayout;
  final Widget webscreenlayout;

  const ResponsiveLayout(
      {super.key,
      required this.mobilescreenlayout,
      required this.webscreenlayout});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        //maxwidth will give us the max width of the screen
        if (constraints.maxWidth > 900) {
          return webscreenlayout;
        }
        return mobilescreenlayout;
      },
    );
  }
}
