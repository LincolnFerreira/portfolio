import 'package:flutter/material.dart';
import '../../phase_uri.dart';
import '../../../core/app_texts.dart';
import '../../../core/theme/sizes.dart';
import '../../../core/theme/text_theme.dart';

class AboutMeSection extends StatelessWidget {
  final double paddingHorizontalComponent;
  const AboutMeSection({
    super.key,
    required this.paddingHorizontalComponent,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: paddingHorizontalComponent),
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
                const SizedBox(height: AppSizes.spacingMd),
                ...AppTexts.aboutMe.description.map(
                  (paragraph) => Padding(
                    padding: const EdgeInsets.only(
                        bottom: 20.0, left: 33, right: 33),
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: AppTextTheme.textTheme.headlineLarge,
                        children: _buildTextSpans(paragraph),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: AppSizes.spacingXl2),
                const PhaseUri()
              ],
            ),
          ),
        ],
      ),
    );
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
}
