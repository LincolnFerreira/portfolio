import 'package:flutter/material.dart';
import 'package:portfolio/components/atomic/atoms/skills_svg_component.dart';
import 'package:portfolio/components/atomic/molecules/skill_item.dart';
import 'package:portfolio/core/entities/skill.dart';
import 'package:portfolio/core/theme/colors.dart';

class SkillsComponent extends StatefulWidget {
  final int currentIndex;
  final EdgeInsets paddingMargin;
  final List<Skill> skills;

  const SkillsComponent({
    super.key,
    required this.skills,
    required this.currentIndex,
    required this.paddingMargin,
  });

  @override
  _SkillsComponentState createState() => _SkillsComponentState();
}

class _SkillsComponentState extends State<SkillsComponent> {
  late int currentIndex;

  @override
  void initState() {
    super.initState();
    currentIndex = widget.currentIndex;
  }

  void _onSkillTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.paddingMargin,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 1,
            color: AppColors.primary,
          ),
          Row(
            spacing: 40,
            mainAxisAlignment: MainAxisAlignment.center,
            children: widget.skills.map((skill) {
              final index = widget.skills.indexOf(skill);
              return SkillItem(
                skill: skill.title,
                isActive: index == currentIndex,
                onTap: () => _onSkillTap(index),
              );
            }).toList(),
          ),
          SkillsSvgComponent(skills: widget.skills[currentIndex].paths),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}
