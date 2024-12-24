import 'package:flutter/material.dart';
import 'package:portfolio/components/atomic/molecules/language_toggle.dart';
import 'package:portfolio/core/theme/sizes.dart';

class CustomDrawer extends StatelessWidget {
  final bool isDesktop;
  final String selectedLanguage;
  final Function(String) changeLanguage;

  const CustomDrawer({
    super.key,
    required this.isDesktop,
    required this.selectedLanguage,
    required this.changeLanguage,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.all(AppSizes.screenPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                // Handle Home tap
              },
            ),
            ListTile(
              leading: Icon(Icons.work),
              title: Text('Projects'),
              onTap: () {
                // Handle Projects tap
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('About Me'),
              onTap: () {
                // Handle About Me tap
              },
            ),
            ListTile(
              leading: Icon(Icons.contact_mail),
              title: Text('Contact'),
              onTap: () {
                // Handle Contact tap
              },
            ),
            Spacer(),
            Align(
              alignment: Alignment.centerRight,
              child: LanguageToggle(
                currentLanguage: selectedLanguage,
                onLanguageChange: changeLanguage,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
