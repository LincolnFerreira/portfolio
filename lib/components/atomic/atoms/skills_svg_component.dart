import 'package:flutter/material.dart';

class SkillsSvgComponent extends StatelessWidget {
  final List<String> skills;

  const SkillsSvgComponent({
    super.key,
    required this.skills,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: skills.map((skill) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Image.asset(
            skill,
            height: 80,
            width: 80,
          ),
        );
      }).toList(),
    );
  }
}
