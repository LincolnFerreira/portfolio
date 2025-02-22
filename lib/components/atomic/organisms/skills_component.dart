import 'dart:async';
import 'package:flutter/material.dart';
import 'package:portfolio/core/padding_utils.dart';
import '../atoms/skills_svg_component.dart';
import '../molecules/skill_item.dart';
import '../../../core/entities/skill.dart';
import '../../../core/theme/colors.dart';

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
  final ScrollController _scrollController = ScrollController();
  Timer? _autoChangeTimer;
  late int _lastSelectedIndex;

  @override
  void initState() {
    super.initState();
    currentIndex = widget.currentIndex;
    _lastSelectedIndex = currentIndex;
    _startAutoChangeTimer();
  }

  @override
  void dispose() {
    _autoChangeTimer?.cancel();
    _scrollController.dispose();
    super.dispose();
  }

  void _onSkillTap(int index) {
    setState(() {
      currentIndex = index;
      _lastSelectedIndex = currentIndex;
    });
    _resetAutoChangeTimer();
    _scrollToSelectedItem();
  }

  void _startAutoChangeTimer() {
    _autoChangeTimer = Timer.periodic(Duration(seconds: 5), (timer) {
      if (mounted) {
        setState(() {
          currentIndex = (currentIndex + 1) % widget.skills.length;
        });
        _scrollToSelectedItem();
      }
    });
  }

  void _resetAutoChangeTimer() {
    _autoChangeTimer?.cancel();
    _startAutoChangeTimer();
  }

  // Função para rolar até o item selecionado
  void _scrollToSelectedItem() {
    if (_scrollController.hasClients) {
      final itemWidth =
          100.0; // Ajuste esse valor conforme a largura do seu item
      final offset = itemWidth * currentIndex;

      _scrollController.animateTo(
        offset,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 600;
    final padding = getPadding(context);

    return Padding(
      padding: padding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 1,
            color: AppColors.primary,
          ),
          isMobile
              ? GestureDetector(
                  onHorizontalDragUpdate: (details) {
                    _scrollController.jumpTo(
                      _scrollController.offset - details.primaryDelta!,
                    );
                  },
                  child: SingleChildScrollView(
                    controller: _scrollController,
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      spacing: 20,
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
                  ),
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
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
