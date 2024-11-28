import 'package:flutter/material.dart';
import 'package:portfolio/core/theme/colors.dart';
import 'package:responsive_framework/responsive_framework.dart';

class NavBar extends StatelessWidget implements PreferredSizeWidget {
  final String selectedSection;
  final String selectedLanguage;
  final Function(String) onSectionChanged;
  final Function(String) onLanguageChanged;

  const NavBar({
    Key? key,
    required this.selectedSection,
    required this.selectedLanguage,
    required this.onSectionChanged,
    required this.onLanguageChanged,
  }) : super(key: key);

  // Constantes
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
    return PreferredSize(
      preferredSize: const Size.fromHeight(preferredAppBarHeight),
      child: Container(
        padding: const EdgeInsets.symmetric(
            vertical: paddingVertical, horizontal: paddingHorizontal),
        color: Colors.transparent,
        child: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: false,
          titleSpacing: ResponsiveValue(
            context,
            defaultValue: defaultTitleSpacing,
            conditionalValues: [
              const Condition.smallerThan(
                  name: TABLET, value: smallTitleSpacing),
              const Condition.largerThan(
                  name: DESKTOP, value: largeTitleSpacing),
            ],
          ).value,
          title: Row(
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
  Size get preferredSize => const Size.fromHeight(preferredAppBarHeight);
}
