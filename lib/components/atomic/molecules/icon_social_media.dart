import 'package:flutter/material.dart';
import '../../../core/theme/colors.dart';

class IconSocialMedia extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;
  final double iconSize;

  const IconSocialMedia({
    super.key,
    required this.icon,
    required this.label,
    required this.onTap,
    this.iconSize = 30.0,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Column(
          children: [
            Icon(
              icon,
              size: iconSize,
              color: AppColors.textPrimary,
            ),
            SizedBox(height: 8),
            Text(
              label,
              style: TextStyle(fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
