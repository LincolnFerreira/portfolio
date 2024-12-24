import 'package:flutter/material.dart';
import 'package:portfolio/app_icons_icons.dart';
import 'package:portfolio/components/atomic/molecules/icon_social_media.dart';

class AvatarWithSocialMedia extends StatelessWidget {
  final String imageUrl;
  final VoidCallback onTapGitHub;
  final VoidCallback onTapMedium;
  final VoidCallback onTapLinkedIn;

  const AvatarWithSocialMedia({
    super.key,
    required this.imageUrl,
    required this.onTapGitHub,
    required this.onTapMedium,
    required this.onTapLinkedIn,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 80,
          backgroundImage: NetworkImage(imageUrl),
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconSocialMedia(
              icon: AppIcons.github_squared,
              label: 'GitHub',
              onTap: onTapGitHub,
            ),
            const SizedBox(width: 26),
            IconSocialMedia(
              icon: AppIcons.medium,
              label: 'Medium',
              onTap: onTapMedium,
            ),
            const SizedBox(width: 26),
            IconSocialMedia(
              icon: AppIcons.linkedin_squared,
              label: 'LinkedIn',
              onTap: onTapLinkedIn,
            ),
          ],
        ),
      ],
    );
  }
}