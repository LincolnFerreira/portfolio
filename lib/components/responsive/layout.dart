import 'package:flutter/material.dart';
import 'package:portfolio/components/responsive/tablet.dart';
import 'package:portfolio/core/theme/sizes.dart';

class Layout extends StatelessWidget {
  const Layout({
    super.key,
    this.desktop,
    this.tablet,
    this.mobile,
  });

  final Widget? desktop;
  final Widget? tablet;
  final Widget? mobile;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) {
        if (constraints.maxWidth >= AppSizes.desktopScreenSize) {
          return const Tablet();
        } else if (constraints.maxWidth < AppSizes.desktopScreenSize &&
            constraints.maxWidth >= AppSizes.tabletScreenSize) {
          return const Tablet();
        } else {
          return const Tablet();
        }
      },
    );
  }
}
