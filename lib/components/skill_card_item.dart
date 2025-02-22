import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../core/theme/colors.dart';

class SkillCardItem extends StatelessWidget {
  final String image;
  const SkillCardItem({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Material(
        elevation: 20.0,
        borderRadius: BorderRadius.circular(8.0),
        child: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: AppColors.background,
            border: Border.all(
              color: Colors.white.withOpacity(0.7),
              width: 1.0,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(4),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: _buildImage(image),
          ),
        ),
      ),
    );
  }

  Widget _buildImage(String imagePath) {
    if (imagePath.endsWith('.svg')) {
      if (Uri.tryParse(imagePath)?.hasAbsolutePath ?? false) {
        // URL de imagem SVG
        return SvgPicture.network(
          imagePath,
          width: 30,
          placeholderBuilder: (context) =>
              const CircularProgressIndicator(), // Placeholder opcional
        );
      } else {
        // Asset de imagem SVG
        return SvgPicture.asset(
          imagePath,
          width: 30,
        );
      }
    } else {
      if (Uri.tryParse(imagePath)?.hasAbsolutePath ?? false) {
        // URL de imagem PNG/JPG/etc.
        return Image.network(
          imagePath,
          width: 30,
          fit: BoxFit.contain,
          errorBuilder: (context, error, stackTrace) =>
              const Icon(Icons.error, size: 30),
        );
      } else {
        // Asset de imagem PNG/JPG/etc.
        return Image.asset(
          imagePath,
          width: 30,
          fit: BoxFit.contain,
        );
      }
    }
  }
}
