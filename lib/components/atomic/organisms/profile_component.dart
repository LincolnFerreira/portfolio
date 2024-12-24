import 'package:flutter/material.dart';
import 'package:portfolio/components/atomic/molecules/user_introduction.dart';
import 'package:portfolio/components/atomic/molecules/avatar_with_social_media.dart';
import 'package:portfolio/core/theme/sizes.dart';

class ProfileComponent extends StatelessWidget {
  final String area;
  final String name;
  final VoidCallback onButtonPressed;
  final String imageUrl;
  final VoidCallback onTapGitHub;
  final VoidCallback onTapMedium;
  final VoidCallback onTapLinkedIn;

  const ProfileComponent({
    super.key,
    required this.area,
    required this.name,
    required this.onButtonPressed,
    required this.imageUrl,
    required this.onTapGitHub,
    required this.onTapMedium,
    required this.onTapLinkedIn,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSizes.screenPadding,
        vertical: AppSizes.spacing100,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          // First item
          UserIntroduction(
            area: area,
            name: name,
            onButtonPressed: onButtonPressed,
          ),
          // Second item
          AvatarWithSocialMedia(
            imageUrl: imageUrl,
            onTapGitHub: onTapGitHub,
            onTapMedium: onTapMedium,
            onTapLinkedIn: onTapLinkedIn,
          ),
        ],
      ),
    );
  }
}
