import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:meta_seo/meta_seo.dart';
import 'package:portfolio/components/templates/home_template.dart';
import 'package:portfolio/core/seo/seo.dart';

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
    return HomeTemplate(
      selectedLanguage: selectedLanguage,
      changeLanguage: changeLanguage,
      activeItem: selectedSection,
      onTapHome: () {
        setActiveSection('Home');
        print('Home tapped');
      },
      onTapProjects: () {
        setActiveSection('Projects');
        print('Projects tapped');
      },
      onTapAboutMe: () {
        setActiveSection('About Me');
        print('About Me tapped');
      },
      onTapContact: () {
        setActiveSection('Contact');
        print('Contact tapped');
      },
      area: 'Back-end and Mobile Developer',
      name: 'Lincoln Ferreira',
      imageUrl: 'https://example.com/your-photo.jpg',
      onButtonPressed: () {
        print('Button pressed');
      },
      onTapGitHub: () {
        print('GitHub tapped');
      },
      onTapMedium: () {
        print('Medium tapped');
      },
      onTapLinkedIn: () {
        print('LinkedIn tapped');
      },
    );
  }
}
