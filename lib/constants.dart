import 'dart:ui';
import 'package:flutter/material.dart';

class SizeConfig {

  static late MediaQueryData _mediaQueryData;
  static late double screenWidth;
  static late double screenHeight;
  static late double blockSizeHorizontal;
  static late double blockSizeVertical;
  static late double _safeAreaHorizontal;
  static late double _safeAreaVertical;
  static late double safeBlockHorizontal;
  static late double safeBlockVertical;
  static late double fontSizeScale;

  //height: 938.66666
  //width: 480
  //fontSize * (MediaQuery.of(context).size.width / 3) / 100
  void init(BuildContext context){
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
    blockSizeHorizontal = screenWidth/100;
    blockSizeVertical = screenHeight/100;
    _safeAreaHorizontal = _mediaQueryData.padding.left +
        _mediaQueryData.padding.right;
    _safeAreaVertical = _mediaQueryData.padding.top +
        _mediaQueryData.padding.bottom;
    safeBlockHorizontal = (screenWidth - _safeAreaHorizontal)/100;
    safeBlockVertical = (screenHeight - _safeAreaVertical)/100;
    fontSizeScale = (screenWidth / 3) / 100;
  }


}

class AppColors {
  static const Color blueColor = Color(0xff1A75A1);
  static const Color greenColor = Color(0xff78C694);
}