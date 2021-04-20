// import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class AppGradients {
  static final linear = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [
      Color(0xFF57B6E5),
      Color(0xFF8257E5),
    ],

    // colors: [
    //   Color(0xFF57B6E5),
    //   Color.fromRGBO(130, 87, 229, 0.695),
    // ],
    // stops: [0.0, 0.695],
    // transform: GradientRotation(2.13959913 * pi),
  );
}
