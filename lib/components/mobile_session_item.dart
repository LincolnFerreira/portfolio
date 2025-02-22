import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'skill_card_item.dart';

class MobileSessionItem extends StatefulWidget {
  final String title;
  final String description;
  final String iconPath;
  final VoidCallback? onTap;
  final List<String>? images;

  const MobileSessionItem({
    super.key,
    required this.title,
    required this.description,
    required this.iconPath,
    this.onTap,
    this.images,
  });

  @override
  _MobileSessionItemState createState() => _MobileSessionItemState();
}

class _MobileSessionItemState extends State<MobileSessionItem> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    double width = screenWidth > 600 ? 403 : screenWidth * 0.9;
    double height = 170;

    return MouseRegion(
      onEnter: (_) => setState(() => _isHovering = true),
      onExit: (_) => setState(() => _isHovering = false),
      child: GestureDetector(
        onTap: widget.onTap,
        child: Container(
          width: width,
          height: height,
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 20,
          ),
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                  color: Color(0xff1B2C42),
                ),
                height: 40,
                width: 40,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset(
                    'assets/Orion_code-fork.svg',
                    color: const Color(0xff6F81F7),
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(widget.title),
                    const SizedBox(
                      height: 10,
                    ),
                    widget.images == null
                        ? Text(
                            widget.description,
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.7),
                              fontSize: 14,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w300,
                              height: 1.2,
                            ),
                          )
                        : Row(
                            children: widget.images!.map(
                              (item) {
                                return SkillCardItem(image: item);
                              },
                            ).toList(),
                          ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
