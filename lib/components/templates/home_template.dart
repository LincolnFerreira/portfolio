import 'package:flutter/material.dart';
import 'package:portfolio/components/atomic/atoms/custom_text.dart';
import 'package:portfolio/components/atomic/molecules/language_toggle.dart';
import 'package:portfolio/components/circle_blur.dart';
import 'package:portfolio/components/organisms/custom_drawer.dart';
import 'package:portfolio/components/organisms/custom_header.dart';
import 'package:portfolio/core/device/device_utils.dart';
import 'package:portfolio/core/theme/sizes.dart';

class HomeTemplate extends StatelessWidget {
  final String selectedLanguage;
  final void Function(String newLanguage) changeLanguage;

  const HomeTemplate({
    super.key,
    required this.selectedLanguage,
    required this.changeLanguage,
  });

  @override
  Widget build(BuildContext context) {
    var isDesktop = DeviceUtility.isDesktop(context);

    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      backgroundColor: const Color(0xff12171D),
      appBar: CustomHeader(
        isDesktop: isDesktop,
        selectedLanguage: selectedLanguage,
        changeLanguage: changeLanguage,
      ),
      drawer: !isDesktop ? const CustomDrawer() : null,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            const CircleBlur(
              verticalPercentage: 10,
              horizontalPercentage: 76,
            ),
            const CircleBlur(
              verticalPercentage: 90,
              horizontalPercentage: -10,
            ),
            const CircleBlur(
              verticalPercentage: 150,
              horizontalPercentage: 50,
            ),
            Column(
              children: [
                const CustomText('Home Page'),
                CustomText('Selected Language: $selectedLanguage'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
