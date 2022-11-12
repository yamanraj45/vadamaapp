import 'package:flutter/material.dart';

class SizeConfig {
  late double screenWidth;
  late double screenHeight;
  late double defaultSize;
  late Orientation orientation;

  void init(BuildContext context) {
    var _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
  }
}

// Get the proportionate height as per screen size
double getProportionateScreenHeight(double inputHeight) {
  // double screenHeight = SizeConfig().screenHeight;
  // 812 is the layout height that designer use
  return inputHeight;
}

// Get the proportionate height as per screen size
double getProportionateScreenWidth(double inputWidth) {
  // double screenWidth = SizeConfig().screenWidth;
  // 375 is the layout width that designer use
  return inputWidth;
}
