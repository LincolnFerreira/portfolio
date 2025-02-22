import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import '../atoms/custom_text.dart';
import '../../../core/theme/colors.dart';
import '../../../core/theme/sizes.dart';

class LanguageToggle extends StatelessWidget {
  final String currentLanguage;
  final void Function(String newLanguage) onLanguageChange;

  const LanguageToggle({
    Key? key,
    required this.currentLanguage,
    required this.onLanguageChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: AppSizes.sm,
      mainAxisSize: MainAxisSize.min,
      children: [
        _buildLanguageText('PT', context),
        const CustomText('|'),
        _buildLanguageText('EN', context),
      ],
    );
  }

  Widget _buildLanguageText(String language, BuildContext context) {
    bool isActive = currentLanguage == language;
    return GestureDetector(
      onTap: () => onLanguageChange(language),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        onEnter: (_) => _onHover(context, language, true),
        onExit: (_) => _onHover(context, language, false),
        child: Text(
          language,
          style: TextStyle(
            fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
            fontSize: isActive ? 18 : 16,
            color: isActive
                ? AppColors.primary
                : AppColors.textSecondary.withOpacity(0.6),
          ),
        ),
      ),
    );
  }

  void _onHover(BuildContext context, String language, bool isHovering) {
    if (isHovering && currentLanguage != language) {}
  }
}
