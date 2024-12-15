import 'package:flutter/material.dart';
import 'package:portfolio/components/phase_uri.dart';
import 'package:portfolio/core/app_texts.dart';
import 'package:portfolio/core/theme/sizes.dart';
import 'package:portfolio/core/theme/text_theme.dart';

class AboutMeSection extends StatelessWidget {
  const AboutMeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 102.0),
      child: Row(
        children: [
          Expanded(
            flex: 6,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Sobre mim',
                  style: TextStyle(
                    fontSize: 42,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: AppSizes.spacingXs),
                ...AppTexts.aboutMe.map(
                  (paragraph) => Padding(
                    padding: const EdgeInsets.only(
                        bottom: 20.0, left: 33, right: 33),
                    child: RichText(
                      text: TextSpan(
                        style: AppTextTheme.textTheme.headlineLarge,
                        children: _buildTextSpans(paragraph),
                      ),
                    ),
                  ),
                ),
                const PhaseUri()
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SoftSkillIcon extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;

  const SoftSkillIcon({
    super.key,
    required this.icon,
    required this.label,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: color),
        const SizedBox(width: 8),
        Text(
          label,
          style: TextStyle(
            color: color,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}

List<TextSpan> _buildTextSpans(String paragraph) {
  final boldWords = [
    'linhas de código',
    'transformar',
    'Node',
    'plataformas',
    'mobile',
    'back-end',
    'Dart',
    'tecnologia',
    'profissionais'
  ];

  final words = paragraph.split(' ');
  return words.map((word) {
    final isBold = boldWords.contains(word.replaceAll(RegExp(r'[,.]'), ''));
    return TextSpan(
      text: '$word ',
      style:
          TextStyle(fontWeight: isBold ? FontWeight.w900 : FontWeight.normal),
    );
  }).toList();
}
