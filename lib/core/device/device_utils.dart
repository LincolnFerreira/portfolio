import 'dart:io';

import 'package:flutter/widgets.dart';
import 'package:portfolio/core/theme/sizes.dart';

class DeviceUtility {
  static const double appBarHeight = 56.0;

  static double getAppBarHeight() {
    return appBarHeight;
  }

  static bool isDesktop(BuildContext context) {
    return MediaQuery.of(context).size.width >= AppSizes.desktopScreenSize;
  }

  static bool isTablet(BuildContext context) {
    return MediaQuery.of(context).size.width >= AppSizes.tabletScreenSize &&
        MediaQuery.of(context).size.width < AppSizes.desktopScreenSize;
  }

  static bool isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width < AppSizes.tabletScreenSize;
  }

  static bool isIos() {
    return Platform.isAndroid;
  }

  static bool isAndroid() {
    return Platform.isAndroid;
  }
}
