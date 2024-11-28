import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MobilePortfolioSection extends StatefulWidget {
  const MobilePortfolioSection({super.key});

  @override
  State<MobilePortfolioSection> createState() => _MobilePortfolioSectionState();
}

class _MobilePortfolioSectionState extends State<MobilePortfolioSection> {
  final PageController _pageController = PageController();

  final List<Map<String, String>> projects = [
    {
      'title': 'SafeFood',
      'description':
          'A Safe Food é um app para ajudar pessoas com restrições alimentares...',
      'imagePath': 'assets/unnamed.webp',
      'tags': 'Dart, Flutter, iOS, Android'
    },
    {
      'title': 'Outro Projeto',
      'description': 'Descrição do segundo projeto...',
      'imagePath': 'assets/other_project_screenshot.png',
      'tags': 'Flutter, Web, Mobile'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      child: PageView.builder(
        scrollDirection: Axis.vertical,
        controller: _pageController,
        itemCount: projects.length,
        itemBuilder: (context, index) {
          final project = projects[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        project['title']!,
                        style: const TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        project['description']!,
                        style: const TextStyle(
                          fontSize: 16,
                          color: Color(0xFFB0BEC5),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Wrap(
                        spacing: 8,
                        children: project['tags']!.split(', ').map((tag) {
                          return Chip(
                            label: Text(tag),
                            backgroundColor: Colors.grey[800],
                            labelStyle: const TextStyle(color: Colors.white),
                          );
                        }).toList(),
                      ),
                      const SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('Ver projeto'),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 241,
                  height: 496,
                  child: Center(
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: SizedBox(
                            height: 596,
                            child: Image.asset(
                              project['imagePath']!,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                          child: SvgPicture.asset(
                            'assets/mockup-ios-white.svg',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
