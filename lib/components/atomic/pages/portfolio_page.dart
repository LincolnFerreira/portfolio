import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:meta_seo/meta_seo.dart';
import '../templates/portfolio_templates.dart';
import '../../../core/seo/seo.dart';

class PortfolioPage extends StatefulWidget implements Seo {
  const PortfolioPage({super.key, required this.title});

  final String title;

  @override
  State<PortfolioPage> createState() => _HomePageState();

  @override
  void loadSEO() {
    final meta = MetaSEO();
    meta.author(author: 'Eng Mouaz M AlShahmeh');
    meta.description(description: 'Meta SEO Web Example');
    meta.keywords(keywords: 'Flutter, Dart, SEO, Meta, Web');
  }
}

class _HomePageState extends State<PortfolioPage> {
  String selectedSection = 'Home';
  String selectedLanguage = 'PT';

  void changeLanguage(String newLanguage) {
    setState(() {
      selectedLanguage = newLanguage;
    });
  }

  void setActiveSection(String section) {
    setState(() {
      selectedSection = section;
    });
  }

  @override
  Widget build(BuildContext context) {
    return PortfolioTemplate(
      selectedLanguage: selectedLanguage,
      changeLanguage: changeLanguage,
      activeItem: selectedSection,
      onTapHome: () {
        setActiveSection('Home');
        if (kDebugMode) {
          print('Home tapped');
        }
      },
      onTapProjects: () {
        setActiveSection('Projects');
        if (kDebugMode) {
          print('Projects tapped');
        }
      },
      onTapAboutMe: () {
        setActiveSection('About Me');
        if (kDebugMode) {
          print('About Me tapped');
        }
      },
      onTapContact: () {
        setActiveSection('Contact');
        if (kDebugMode) {
          print('Contact tapped');
        }
      },
      area: 'Desenvolvedor mobile/back-end',
      name: 'Lincoln Ferreira',
      imageUrl: 'https://example.com/your-photo.jpg',
      onButtonPressed: () {
        if (kDebugMode) {
          print('Button pressed');
        }
      },
      onTapGitHub: () {
        if (kDebugMode) {
          print('GitHub tapped');
        }
      },
      onTapMedium: () {
        if (kDebugMode) {
          print('Medium tapped');
        }
      },
      onTapLinkedIn: () {
        if (kDebugMode) {
          print('LinkedIn tapped');
        }
      },
    );
  }
}
