import 'package:flutter/material.dart';
import '../../../core/theme/colors.dart';

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
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: AppColors.primary,
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
            leading: const Icon(Icons.home),
            title: const Text(
              'Home',
              style: TextStyle(color: Colors.black),
            ),
            onTap: () {
              // Handle Home tap
            },
          ),
          ListTile(
            leading: const Icon(Icons.work),
            title: const Text('Projects'),
            onTap: () {
              // Handle Projects tap
            },
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('About Me'),
            onTap: () {
              // Handle About Me tap
            },
          ),
          ListTile(
            leading: const Icon(Icons.contact_mail),
            title: const Text('Contact'),
            onTap: () {
              // Handle Contact tap
            },
          ),
        ],
      ),
    );
  }
}
