import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/components/mobile_session.dart';

class Perspective3DCarousel extends StatefulWidget {
  final List<MobileItemData> items;
  final int selectedItem;
  final ValueChanged<int> onItemSelected;

  const Perspective3DCarousel(
      {super.key,
      required this.items,
      required this.selectedItem,
      required this.onItemSelected});

  @override
  State<Perspective3DCarousel> createState() => _Perspective3DCarouselState();
}

class _Perspective3DCarouselState extends State<Perspective3DCarousel> {
  late PageController _pageController;
  late double _currentPage;

  @override
  void initState() {
    super.initState();

    // Queremos começar no terceiro item (índice 2)
    const int initialPageIndex = 2;

    _pageController =
        PageController(initialPage: initialPageIndex, viewportFraction: 0.3);
    _currentPage = initialPageIndex.toDouble();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _pageController.addListener(() {
        setState(() {
          _currentPage = _pageController.page!;
          widget.onItemSelected(_currentPage.toInt());
        });
      });

      // Forçar alinhamento inicial
      _pageController.jumpToPage(initialPageIndex);
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
              itemCount: widget.items.length,
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
                final item = widget.items[index];
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
                                  item.imagePath,
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
