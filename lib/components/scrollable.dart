import 'dart:ui';
import 'package:flutter/material.dart';

class ScrollingBackdrop extends StatefulWidget {
  final Widget child;
  final double scrollSpeed;
  final double blurAmount;

  const ScrollingBackdrop({
    Key? key,
    required this.child,
    this.scrollSpeed = 50,
    this.blurAmount = 10,
  }) : super(key: key);

  @override
  _ScrollingBackdropState createState() => _ScrollingBackdropState();
}

class _ScrollingBackdropState extends State<ScrollingBackdrop>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 10),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: widget.blurAmount,
              sigmaY: widget.blurAmount,
            ),
            child: Container(
              color: Colors.black.withOpacity(0.1),
            ),
          ),
        ),
        Positioned.fill(
          child: AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              double offset = (_controller.value * widget.scrollSpeed) %
                  MediaQuery.of(context).size.width;

              return Stack(
                children: List.generate(10, (index) {
                  double xPosition =
                      (index * MediaQuery.of(context).size.width / 3) - offset;
                  return Positioned(
                    left: xPosition,
                    top: MediaQuery.of(context).size.height * 0.4,
                    child: Opacity(
                      opacity: 0.5,
                      child: widget.child,
                    ),
                  );
                }),
              );
            },
          ),
        ),
      ],
    );
  }
}
