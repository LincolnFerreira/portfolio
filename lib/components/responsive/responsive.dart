import 'package:flutter/material.dart';
import 'package:portfolio/core/device/device_utils.dart';

class ResponsiveWidget extends StatelessWidget {
  final Widget mobileWidget;
  final Widget tabletWidget;
  final Widget desktopWidget;

  const ResponsiveWidget({
    Key? key,
    required this.mobileWidget,
    required this.tabletWidget,
    required this.desktopWidget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (DeviceUtility.isDesktop(context)) {
      return desktopWidget;
    } else if (DeviceUtility.isTablet(context)) {
      return tabletWidget;
    } else {
      return mobileWidget;
    }
  }
}
