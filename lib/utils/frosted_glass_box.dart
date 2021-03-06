import 'dart:ui';

import 'package:flutter/material.dart';

class FrostedGlassBox extends StatelessWidget {
  final double width, height;
  final Widget child;

  const FrostedGlassBox(
      {Key key,
      @required this.width,
      @required this.height,
      @required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var borderRadius = BorderRadius.circular(25.0);
    return ClipRRect(
      borderRadius: borderRadius,
      child: Container(
        width: width,
        height: height,
        child: Stack(
          children: [
            BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 7.0,
                sigmaY: 7.0,
              ),
              child: Container(
                width: width,
                height: height,
                child: Text(""),
              ),
            ),
            Opacity(opacity: 0.15),
            Container(
              decoration: BoxDecoration(
                borderRadius: borderRadius,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 30.0,
                  )
                ],
                border: Border.all(
                  color: Colors.white.withOpacity(0.2),
                  width: 1.0,
                ),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.white.withOpacity(0.5),
                    Colors.blue.withOpacity(0.25),
                    Colors.white.withOpacity(0.1),
                  ],
                  stops: [
                    0.0,
                    0.5,
                    1.0,
                  ],
                ),
              ),
              child: child,
            ),
          ],
        ),
      ),
    );
  }
}
//Logos from seeklogo.com
