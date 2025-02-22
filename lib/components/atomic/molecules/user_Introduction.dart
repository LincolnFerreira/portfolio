import 'package:flutter/material.dart';
import '../atoms/custom_text.dart';
import '../../../core/theme/colors.dart';

class UserIntroduction extends StatelessWidget {
  final String area;
  final String name;

  const UserIntroduction({
    Key? key,
    required this.area,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          spacing: 10,
          children: [
            Container(
              height: 2,
              width: screenWidth * .1,
              color: AppColors.primary,
            ),
            CustomText(
              area,
              textStyleType: TextStyleType.bodyLarge16,
              color: AppColors.primary,
            ),
          ],
        ),
        const SizedBox(height: 8),
        CustomText(
          name,
          textStyleType: TextStyleType.headlineLarge32,
          color: AppColors.primary,
        ),
      ],
    );
  }
}
