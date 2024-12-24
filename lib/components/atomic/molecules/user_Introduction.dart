import 'package:flutter/material.dart';
import 'package:portfolio/components/atomic/atoms/custom_text.dart';
import 'package:portfolio/components/button.dart';
import 'package:portfolio/core/theme/colors.dart';

class UserIntroduction extends StatelessWidget {
  final String area;
  final String name;

  final VoidCallback onButtonPressed;

  const UserIntroduction({
    Key? key,
    required this.area,
    required this.name,
    required this.onButtonPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          spacing: 10,
          children: [
            Container(
              height: 2,
              width: 100,
              color: AppColors.primary,
            ),
            CustomText(
              area,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
                color: AppColors.primary,
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        CustomText(
          name,
          style: const TextStyle(
            fontSize: 64,
            fontWeight: FontWeight.bold,
            color: AppColors.primary,
          ),
        ),
        const SizedBox(height: 60),
        GradientButton(
          filled: true,
          text: "Currículo",
          icon: Icons.file_download_outlined,
          onPressed: () {},
        )
      ],
    );
  }
}
