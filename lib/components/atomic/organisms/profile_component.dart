import 'package:flutter/material.dart';
import 'package:portfolio/core/padding_utils.dart';
import '../molecules/user_introduction.dart';
import '../molecules/avatar_with_social_media.dart';
import '../../../core/theme/sizes.dart';
import '../../../core/device/device_utils.dart';

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
    EdgeInsets padding = getPadding(context);

    return Padding(
      padding: padding,
      child: DeviceUtility.isDesktop(context)
          ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: _buildProfileWidgets(),
            )
          : Column(
              spacing: 56,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: _buildProfileWidgets(),
            ),
    );
  }

  List<Widget> _buildProfileWidgets() {
    return [
      UserIntroduction(
        area: area,
        name: name,
      ),
      AvatarWithSocialMedia(
        imageUrl: imageUrl,
        onTapGitHub: onTapGitHub,
        onTapMedium: onTapMedium,
        onTapLinkedIn: onTapLinkedIn,
      ),
    ];
  }
}
