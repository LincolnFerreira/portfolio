import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:meta_seo/meta_seo.dart';
import 'package:portfolio/components/templates/home_template.dart';
import 'package:portfolio/core/seo/seo.dart';

class HomePageResponsive extends StatefulWidget implements Seo {
  const HomePageResponsive({super.key, required this.title});

  final String title;

  @override
  State<HomePageResponsive> createState() => _HomePageState();

  @override
  void loadSEO() {
    final meta = MetaSEO();
    meta.author(author: 'Eng Mouaz M AlShahmeh');
    meta.description(description: 'Meta SEO Web Example');
    meta.keywords(keywords: 'Flutter, Dart, SEO, Meta, Web');
  }
}

class _HomePageState extends State<HomePageResponsive> {
  String selectedSection = 'Projetos';
  String selectedLanguage = 'PT';

  void changeLanguage(String newLanguage) {
    setState(() {
      selectedLanguage = newLanguage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return HomeTemplate(
      selectedLanguage: selectedLanguage,
      changeLanguage: changeLanguage,
    );
  }
}
