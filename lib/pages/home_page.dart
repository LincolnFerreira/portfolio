import 'package:flutter/material.dart';
import 'package:meta_seo/meta_seo.dart';
import 'package:portfolio/components/about_me.dart';
import 'package:portfolio/components/back-end_session.dart';
import 'package:portfolio/components/carousel_logos.dart';
import 'package:portfolio/components/carousel_test.dart';
import 'package:portfolio/components/header_component.dart';
import 'package:portfolio/components/responsive/header.dart';
import 'package:portfolio/components/teste.dart';
import 'package:portfolio/core/seo/seo.dart';

class HomePage extends StatefulWidget implements Seo {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();

  @override
  void loadSEO() {
    final meta = MetaSEO();
    meta.author(author: 'Eng Mouaz M AlShahmeh');
    meta.description(description: 'Meta SEO Web Example');
    meta.keywords(keywords: 'Flutter, Dart, SEO, Meta, Web');
  }
}

class _HomePageState extends State<HomePage> {
  String selectedSection = 'Projetos';
  String selectedLanguage = 'PT';
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final size = MediaQuery.of(context).size;

    // Dimensões relativas da tela
    double width = size.width;
    double height = size.height;
    return Scaffold(
      backgroundColor: const Color(0xff12171D),
      appBar: Header(
        onLanguageChanged: (p0) {},
        onSectionChanged: (p0) {},
        selectedLanguage: "",
        selectedSection: "",
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 276.0),
              child: Column(
                children: <Widget>[
                  const SizedBox(height: 80),
                  const HeaderComponent(),
                  const SizedBox(height: 120),
                  const SkillsTab(),
                  const SizedBox(height: 120),
                  const Icon(
                    Icons.abc,
                    color: Colors.white,
                  ),
                  const SizedBox(height: 80),
                  const AboutMeSection(),
                  const SizedBox(height: 80),
                  const Icon(
                    Icons.abc,
                    color: Colors.white,
                  ),
                  const SizedBox(height: 100),
                  const Column(
                    children: [
                      SizedBox(
                        height: 400,
                        child: Perspective3DCarousel(),
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
                  const Text(
                    'Resilience Muscle',
                    style: TextStyle(fontSize: 26),
                  ),
                  const SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Group49(
                          title: 'Projeto',
                          description:
                              'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                          iconPath: 'assets/Orion_code-fork.svg',
                          onTap: () {
                            print('Card clicado!');
                          },
                        ),
                        Group49(
                          title: 'Arquitetura',
                          description:
                              'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                          iconPath: 'assets/Orion_code-fork.svg',
                          onTap: () {
                            print('Card clicado!');
                          },
                        ),
                        Group49(
                          title: 'Stack',
                          description:
                              'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                          iconPath: 'assets/Orion_code-fork.svg',
                          onTap: () {
                            print('Card clicado!');
                          },
                        ),
                      ],
                    ),
                  ),
                  const BackEndSession()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
