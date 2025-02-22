import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ImageContainer extends StatelessWidget {
  final String imagePath;
  final double size;
  final String? placeholderImage;

  const ImageContainer({
    Key? key,
    required this.imagePath,
    this.size = 40.0,
    this.placeholderImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isSvg = imagePath.endsWith('.svg');

    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.transparent),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: isSvg
              ? SvgPicture.asset(
                  imagePath,
                  fit: BoxFit.cover,
                  height: 40,
                  placeholderBuilder: (BuildContext context) => const Center(
                    child: CircularProgressIndicator(),
                  ),
                )
              : Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                  height: 40,
                  errorBuilder: (context, error, stackTrace) {
                    return Image.asset(
                      placeholderImage ?? 'assets/default_image.png',
                      fit: BoxFit.cover,
                    );
                  },
                ),
        ),
      ),
    );
  }
}
