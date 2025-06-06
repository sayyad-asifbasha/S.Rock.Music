import 'package:flutter/widgets.dart';

/// SizeConfig class is used to initialise the height and width of the media.
class SizeConfig {
  // variables
  static late MediaQueryData _mediaQueryData;
  static double? screenWidth;
  static double? screenHeight;
  static double? blockSizeHorizontal;
  static double? blockSizeVertical;
  static double? paddingTop;

  static late double _safeAreaHorizontal;
  static late double _safeAreaVertical;
  static double? safeBlockHorizontal;
  static double? safeBlockVertical;

  // function to initialise the width and height.
  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    blockSizeHorizontal = screenWidth! / 100;
    blockSizeVertical = screenHeight! / 100;

    _safeAreaHorizontal =
        _mediaQueryData.padding.left + _mediaQueryData.padding.right;
    _safeAreaVertical =
        _mediaQueryData.padding.top + _mediaQueryData.padding.bottom;
    safeBlockHorizontal = (screenWidth! - _safeAreaHorizontal) / 100;
    safeBlockVertical = (screenHeight! - _safeAreaVertical) / 100;
  }

}
