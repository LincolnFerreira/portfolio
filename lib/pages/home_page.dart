import 'package:flutter/material.dart';
import 'package:meta_seo/meta_seo.dart';
import 'package:portfolio/components/about_me.dart';
import 'package:portfolio/components/back-end_session.dart';
import 'package:portfolio/components/carousel_logos.dart';
import 'package:portfolio/components/circle_blur.dart';
import 'package:portfolio/components/footer.dart';
import 'package:portfolio/components/header_component.dart';
import 'package:portfolio/components/mobile_session.dart';
import 'package:portfolio/components/responsive/header.dart';
import 'package:portfolio/components/shimmer_arrows.dart';
import 'package:portfolio/core/device/device_utils.dart';
import 'package:portfolio/core/seo/seo.dart';
import 'package:portfolio/mocks/mobile_mock_data.dart';

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
    var isDesktop = DeviceUtility.isDesktop(context);

    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      backgroundColor: const Color(0xff12171D),
      drawer: !isDesktop
          ? Drawer(
              backgroundColor: Colors.amber,
              // Add a ListView to the drawer. This ensures the user can scroll
              // through the options in the drawer if there isn't enough vertical
              // space to fit everything.
              child: Container(
                height: 200,
                child: ListView(
                  // Important: Remove any padding from the ListView.
                  padding: EdgeInsets.zero,
                  children: <Widget>[
                    DrawerHeader(
                      child: Text('Drawer Header'),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                      ),
                    ),
                    ListTile(
                      title: Text('Item 1'),
                      onTap: () {
                        // Update the state of the app
                        // ...
                        // Then close the drawer
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      title: Text('Item 2'),
                      onTap: () {
                        // Update the state of the app
                        // ...
                        // Then close the drawer
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ),
            )
          : null,
      appBar: isDesktop
          ? Header(
              onLanguageChanged: (p0) {},
              onSectionChanged: (p0) {},
              selectedLanguage: "",
              selectedSection: "",
            )
          : null,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            const CircleBlur(
              verticalPercentage: 10,
              horizontalPercentage: 76,
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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 276.0),
                  child: Column(
                    children: <Widget>[
                      const SpaceHeight(height: 100),
                      const HeaderComponent(),
                      const SpaceHeight(height: 120),
                      const SkillsTab(),
                      const ShimmerArrows(
                        spaceTop: 100,
                        spaceBottom: 200,
                      ),
                      const AboutMeSection(),
                      const ShimmerArrows(
                        spaceTop: 200,
                        spaceBottom: 200,
                      ),
                      MobileSession(title: "Mobile", items: items),
                      const ShimmerArrows(
                        spaceTop: 300,
                        spaceBottom: 100,
                      ),
                      const BackEndSession(),
                    ],
                  ),
                ),
                const ShimmerArrows(
                  spaceTop: 200,
                ),
                const CustomFooter(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SpaceHeight extends StatelessWidget {
  final double height;
  const SpaceHeight({
    super.key,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
    );
  }
}
