import 'package:flutter/material.dart';
import 'package:portfolio/components/atomic/organisms/carousel_without_package.dart';
import '../organisms/about_me_section.dart';
import '../organisms/certifications_section.dart';
import '../organisms/footer.dart';
import '../organisms/recommendations_section.dart';
import '../../circle_blur.dart';
import '../organisms/custom_drawer.dart';
import '../organisms/custom_header.dart';
import '../organisms/profile_component.dart';
import '../organisms/skills_component.dart';
import '../../mobile_portfolio_section.dart';
import '../../mobile_session.dart';
import '../../shimmer_arrows.dart';
import '../../../core/device/device_utils.dart';
import '../../../core/theme/sizes.dart';
import '../../../mocks/mobile_mock_data.dart';
import '../../../mocks/skills_mock_data.dart';
import '../pages/home_page.dart';

import '../organisms/backend_section.dart';
import '../organisms/mobile_section.dart';

class PortfolioTemplate extends StatelessWidget {
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

  const PortfolioTemplate({
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
      drawer: !isDesktop
          ? Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomDrawer(
                isDesktop: isDesktop,
                selectedLanguage: selectedLanguage,
                changeLanguage: changeLanguage,
              ),
            )
          : null,
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
                        paddingMargin: const EdgeInsets.symmetric(
                          horizontal: AppSizes.screenPadding,
                        ),
                      ),

                      const ShimmerArrows(
                        spaceTop: AppSizes.spacing140,
                        spaceBottom: AppSizes.spacing100,
                      ),
                      const AboutMeSection(
                        paddingHorizontalComponent: AppSizes.screenPadding,
                      ),
                      const ShimmerArrows(
                        spaceTop: AppSizes.spacing200,
                        spaceBottom: AppSizes.spacing140,
                      ),
                      //TODO: refatorar para usar o componente de projetos responsivo
                      // const MobileSection(),
                      MobileSession(
                        title: "Mobile",
                        items: items,
                        paddingHorizontalComponent: AppSizes.screenPadding,
                      ),
                      const BackendSection(),
                      const CertificationsSection(),
                      const RecommendationsSection(),
                      const Footer()
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
