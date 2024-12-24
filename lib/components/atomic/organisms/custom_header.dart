import 'package:flutter/material.dart';
import 'package:portfolio/components/atomic/molecules/language_toggle.dart';
import 'package:portfolio/core/theme/colors.dart';
import 'package:portfolio/core/theme/sizes.dart';

class CustomHeader extends StatelessWidget implements PreferredSizeWidget {
  final bool isDesktop;
  final String selectedLanguage;
  final Function(String) changeLanguage;
  final String activeItem;
  final Function() onTapHome;
  final Function() onTapProjects;
  final Function() onTapAboutMe;
  final Function() onTapContact;

  const CustomHeader({
    super.key,
    required this.isDesktop,
    required this.selectedLanguage,
    required this.changeLanguage,
    required this.activeItem,
    required this.onTapHome,
    required this.onTapProjects,
    required this.onTapAboutMe,
    required this.onTapContact,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      titleSpacing: AppSizes.screenPadding,
      centerTitle: true,
      toolbarHeight: 112,
      title: isDesktop
          ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: onTapHome,
                      child: Text(
                        'Home',
                        style: TextStyle(
                          color: activeItem == 'Home'
                              ? AppColors.primary
                              : Colors.grey,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: onTapProjects,
                      child: Text(
                        'Projects',
                        style: TextStyle(
                          color: activeItem == 'Projects'
                              ? AppColors.primary
                              : Colors.grey,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: onTapAboutMe,
                      child: Text(
                        'About Me',
                        style: TextStyle(
                          color: activeItem == 'About Me'
                              ? AppColors.primary
                              : Colors.grey,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: onTapContact,
                      child: Text(
                        'Contact',
                        style: TextStyle(
                          color: activeItem == 'Contact'
                              ? AppColors.primary
                              : Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: LanguageToggle(
                    currentLanguage: selectedLanguage,
                    onLanguageChange: changeLanguage,
                  ),
                ),
              ],
            )
          : const Text(''),
      automaticallyImplyLeading: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(112);
}
