import 'package:flutter/material.dart';
import 'package:portfolio/components/responsive/responsive.dart';
import 'package:portfolio/core/device/device_utils.dart';
import 'package:portfolio/core/theme/colors.dart';
import 'package:portfolio/core/theme/sizes.dart';
import 'package:responsive_framework/responsive_framework.dart';

class Header extends StatelessWidget implements PreferredSizeWidget {
  final String selectedSection;
  final String selectedLanguage;
  final Function(String) onSectionChanged;
  final Function(String) onLanguageChanged;

  const Header({
    Key? key,
    required this.selectedSection,
    required this.selectedLanguage,
    required this.onSectionChanged,
    required this.onLanguageChanged,
  }) : super(key: key);

  static const double preferredAppBarHeight = 112.0;
  static const double paddingVertical = 28.0;
  static const double paddingHorizontal = 272.0;
  static const double defaultTitleSpacing = 16.0;
  static const double smallTitleSpacing = 8.0;
  static const double largeTitleSpacing = 32.0;
  static const double menuSpacing = 80.0;
  static const double languageButtonSpacing = 8.0;
  static const Color selectedSectionColor = Color(0xff72ACF3);
  static const Color selectedLanguageColor = Color(0xff909ADB);
  static const Color dividerColor = Color(0xff818181);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.transparent,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: AppSizes.screenPadding,
        vertical: AppSizes.sm,
      ),
      child: AppBar(
        backgroundColor: Colors.transparent,
        leading: DeviceUtility.isDesktop(context)
            ? IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.abc,
                ),
              )
            : null,
        title: ResponsiveWidget(
          mobileWidget: Center(
            child: Text('Mobile View'),
          ),
          tabletWidget: Center(
            child: Text('Tablet View'),
          ),
          desktopWidget: Center(
            child: Row(
              children: [
                _menuItem(
                  'Projetos',
                  selectedSection,
                  context,
                ),
                const SizedBox(width: menuSpacing),
                _menuItem(
                  'Sobre Mim',
                  selectedSection,
                  context,
                ),
                const SizedBox(width: menuSpacing),
                _menuItem(
                  'Contato',
                  selectedSection,
                  context,
                ),
              ],
            ),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: ResponsiveValue(
                context,
                defaultValue: defaultTitleSpacing,
                conditionalValues: [
                  const Condition.smallerThan(
                      name: TABLET, value: smallTitleSpacing),
                  const Condition.largerThan(
                      name: DESKTOP, value: largeTitleSpacing),
                ],
              ).value,
            ),
            child: Row(
              children: [
                _languageButton('PT', selectedLanguage, context),
                const SizedBox(width: languageButtonSpacing),
                const Text(
                  '|',
                  style: TextStyle(color: dividerColor),
                ),
                const SizedBox(width: languageButtonSpacing),
                _languageButton('EN', selectedLanguage, context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _menuItem(String title, String selected, BuildContext context) {
    final isSelected = selected == title;

    return GestureDetector(
      onTap: isSelected ? null : () => onSectionChanged(title),
      child: isSelected
          ? Text(
              title,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: AppColors.primary,
                    fontWeight: FontWeight.w800,
                  ),
            )
          : MouseRegion(
              cursor: SystemMouseCursors.click,
              child: Text(
                title,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontWeight: FontWeight.w400,
                    ),
              ),
            ),
    );
  }

  Widget _languageButton(String lang, String selected, BuildContext context) {
    final isSelected = selected == lang;

    return GestureDetector(
      onTap: isSelected ? null : () => onLanguageChanged(lang),
      child: isSelected
          ? Text(
              lang,
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: AppColors.secondary,
                    fontWeight: FontWeight.w800,
                  ),
            )
          : MouseRegion(
              cursor: SystemMouseCursors.click,
              child: Text(
                lang,
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontWeight: FontWeight.w400,
                      color: AppColors.textSecondary,
                    ),
              ),
            ),
    );
  }

  @override
  Size get preferredSize =>
      Size.fromHeight(DeviceUtility.getAppBarHeight() + 15);
}