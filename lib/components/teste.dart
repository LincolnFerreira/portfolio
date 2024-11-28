import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Group49 extends StatefulWidget {
  final String title;
  final String description;
  final String iconPath;
  final VoidCallback? onTap;

  const Group49({
    super.key,
    required this.title,
    required this.description,
    required this.iconPath,
    this.onTap,
  });

  @override
  _Group49State createState() => _Group49State();
}

class _Group49State extends State<Group49> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovering = true),
      onExit: (_) => setState(() => _isHovering = false),
      child: GestureDetector(
        onTap: widget.onTap,
        child: Column(
          children: [
            SizedBox(
              width: 403,
              height: 158,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      width: 403,
                      height: 158,
                      decoration: ShapeDecoration(
                        color: const Color(0xFF12171D),
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                            width: 1,
                            color: Color(0xFF72ACF3),
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        shadows: _isHovering
                            ? [
                                const BoxShadow(
                                  color: Color(0x3F72ACF3),
                                  blurRadius: 10,
                                  offset: Offset(0, 0),
                                  spreadRadius: 3,
                                )
                              ]
                            : [],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 41,
                    top: 25,
                    child: SizedBox(
                      width: 321.30,
                      height: 107.63,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 53.50,
                            child: SizedBox(
                              width: 99.77,
                              height: 15.88,
                              child: Text(
                                widget.title,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w700,
                                  height: 1.2,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 0,
                            top: 76,
                            child: SizedBox(
                              width: 321.30,
                              height: 31.63,
                              child: Text(
                                widget.description,
                                style: TextStyle(
                                  color: Colors.white.withOpacity(0.7),
                                  fontSize: 14,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w300,
                                  height: 1.2,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: 34.57,
                              height: 36.78,
                              decoration: ShapeDecoration(
                                color: const Color(0xFF1A2C41),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(9.0),
                                child: SvgPicture.asset(
                                  widget.iconPath,
                                  color: const Color(0xff6F81F7),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
