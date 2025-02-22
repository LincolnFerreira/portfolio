import 'package:flutter/material.dart';
import 'package:portfolio/core/device/device_utils.dart';
import 'package:portfolio/core/theme/sizes.dart';

EdgeInsets getPadding(BuildContext context) {
  if (DeviceUtility.isMobile(context)) {
    return const EdgeInsets.symmetric(
      horizontal: 32,
      vertical: 50,
    );
  } else if (DeviceUtility.isTablet(context)) {
    return const EdgeInsets.symmetric(
      horizontal: 64,
      vertical: 75,
    );
  } else {
    return const EdgeInsets.symmetric(
      horizontal: 273,
      vertical: AppSizes.spacing100,
    );
  }
}
