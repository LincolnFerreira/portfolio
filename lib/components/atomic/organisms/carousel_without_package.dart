import 'package:flutter/material.dart';

class HorizontalCarousel extends StatefulWidget {
  final List<String> items;

  const HorizontalCarousel({Key? key, required this.items}) : super(key: key);

  @override
  _HorizontalCarouselState createState() => _HorizontalCarouselState();
}

class _HorizontalCarouselState extends State<HorizontalCarousel> {
  late PageController _pageController;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController =
        PageController(viewportFraction: 0.3, initialPage: _currentIndex);
  }

  void _goToPage(int index) {
    setState(() {
      _currentIndex = index;
      _pageController.animateToPage(
        index,
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 100,
          child: PageView.builder(
            controller: _pageController,
            itemCount: widget.items.length,
            onPageChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            itemBuilder: (context, index) {
              final isSelected = _currentIndex == index;
              return GestureDetector(
                onTap: () => _goToPage(index),
                child: Center(
                  child: Text(
                    widget.items[index],
                    style: TextStyle(
                      fontSize: isSelected ? 24 : 18,
                      fontWeight:
                          isSelected ? FontWeight.bold : FontWeight.normal,
                      color: isSelected ? Colors.blue : Colors.grey,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
