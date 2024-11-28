import 'package:flutter/material.dart';
import 'dart:ui';

class HoverImageContainer extends StatefulWidget {
  final String title;
  final String description;
  final String imagePath;

  const HoverImageContainer({
    super.key,
    required this.title,
    required this.description,
    required this.imagePath,
  });

  @override
  _HoverImageContainerState createState() => _HoverImageContainerState();
}

class _HoverImageContainerState extends State<HoverImageContainer> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double containerWidth = constraints.maxWidth * 1;

        return MouseRegion(
          onEnter: (_) => setState(() => _isHovering = true),
          onExit: (_) => setState(() => _isHovering = false),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              boxShadow: _isHovering
                  ? [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        offset: const Offset(0, 8),
                        blurRadius: 16,
                      ),
                    ]
                  : [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        offset: const Offset(0, 4),
                        blurRadius: 8,
                      ),
                    ],
            ),
            child: Material(
              elevation: _isHovering ? 12 : 4,
              borderRadius: BorderRadius.circular(16),
              clipBehavior: Clip.antiAlias,
              child: SizedBox(
                height: 200,
                width: containerWidth,
                child: Stack(
                  children: <Widget>[
                    ConstrainedBox(
                      constraints: const BoxConstraints.expand(),
                      child: Image.asset(
                        widget.imagePath,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Center(
                      child: ClipRect(
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                          child: Container(
                            width: double.infinity,
                            height: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade200.withOpacity(0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    widget.title,
                                    style: const TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  const SizedBox(height: 8.0),
                                  Text(
                                    widget.description,
                                    style: const TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
