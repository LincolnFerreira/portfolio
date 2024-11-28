import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Perspective3DCarousel extends StatefulWidget {
  const Perspective3DCarousel({Key? key}) : super(key: key);

  @override
  State<Perspective3DCarousel> createState() => _Perspective3DCarouselState();
}

class _Perspective3DCarouselState extends State<Perspective3DCarousel> {
  final PageController _pageController =
      PageController(initialPage: 3, viewportFraction: 0.3);
  double _currentPage = 3.0;

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page!;
      });
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 1200,
        child: Stack(
          children: [
            PageView.builder(
              controller: _pageController,
              itemCount: 10,
              itemBuilder: (context, index) {
                final double difference = (_currentPage - index);

                const double itemWidth = 150;
                const double overlap = -0.2;

                final double translation =
                    difference * itemWidth * (1 - overlap);

                final double scale = index == _currentPage.floor()
                    ? 1.0
                    : 1 - (difference.abs() * 0.1);

                final double opacity = 1 - (difference.abs() * 0.3);

                return GestureDetector(
                  onTap: () {
                    _pageController.animateToPage(
                      index,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                    );
                  },
                  child: Transform.translate(
                    offset: Offset(translation, 0),
                    child: Transform.scale(
                      scale: scale.clamp(0.8, 1.0),
                      child: Opacity(
                        opacity: opacity.clamp(0.0, 1.0),
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: SizedBox(
                                height: 492,
                                child: SvgPicture.asset(
                                  'assets/resilience.svg',
                                  fit: BoxFit.contain,
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
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
