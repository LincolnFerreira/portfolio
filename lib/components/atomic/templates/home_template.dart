import 'package:flutter/material.dart';
import 'package:portfolio/components/circle_blur.dart';
import 'package:portfolio/components/atomic/organisms/custom_drawer.dart';
import 'package:portfolio/components/atomic/organisms/custom_header.dart';
import 'package:portfolio/components/atomic/organisms/profile_component.dart';
import 'package:portfolio/components/atomic/organisms/skills_component.dart';
import 'package:portfolio/core/device/device_utils.dart';
import 'package:portfolio/core/theme/sizes.dart';
import 'package:portfolio/mocks/skills_mock_data.dart';
import 'package:portfolio/components/atomic/pages/home_page.dart';

class HomeTemplate extends StatelessWidget {
  final String selectedLanguage;
  final void Function(String newLanguage) changeLanguage;
  final String activeItem;
  final Function() onTapHome;
  final Function() onTapProjects;
  final Function() onTapAboutMe;
  final Function() onTapContact;
  final String area;
  final String name;
  final String imageUrl;
  final Function() onButtonPressed;
  final Function() onTapGitHub;
  final Function() onTapMedium;
  final Function() onTapLinkedIn;

  const HomeTemplate({
    super.key,
    required this.selectedLanguage,
    required this.changeLanguage,
    required this.activeItem,
    required this.onTapHome,
    required this.onTapProjects,
    required this.onTapAboutMe,
    required this.onTapContact,
    required this.area,
    required this.name,
    required this.imageUrl,
    required this.onButtonPressed,
    required this.onTapGitHub,
    required this.onTapMedium,
    required this.onTapLinkedIn,
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
        activeItem: activeItem,
        onTapHome: onTapHome,
        onTapProjects: onTapProjects,
        onTapAboutMe: onTapAboutMe,
        onTapContact: onTapContact,
      ),
      drawer: !isDesktop
          ? CustomDrawer(
              isDesktop: isDesktop,
              selectedLanguage: selectedLanguage,
              changeLanguage: changeLanguage,
            )
          : null,
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Stack(
                children: [
                  const CircleBlur(
                    verticalPercentage: 10,
                    horizontalPercentage: 80,
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
                      const SpaceHeight(height: 112),
                      ProfileComponent(
                        area: area,
                        name: name,
                        onButtonPressed: onButtonPressed,
                        imageUrl: imageUrl,
                        onTapGitHub: onTapGitHub,
                        onTapMedium: onTapMedium,
                        onTapLinkedIn: onTapLinkedIn,
                      ),
                      SkillsComponent(
                        skills: skillsMock,
                        currentIndex: 0,
                        paddingMargin: EdgeInsets.symmetric(
                          horizontal: AppSizes.screenPadding,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
