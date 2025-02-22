import 'package:flutter/material.dart';
import '../../../core/theme/colors.dart';

class SkillItem extends StatelessWidget {
  final String skill;
  final bool isActive;
  final VoidCallback onTap;

  const SkillItem({
    super.key,
    required this.skill,
    required this.isActive,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Container(
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(
                color: isActive ? Colors.blue : Colors.transparent,
                width: 2.0,
              ),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Text(
              skill,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: isActive ? AppColors.primary : AppColors.textPrimary,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
