import 'package:flutter/material.dart';
import '../core/theme/colors.dart';
import 'atomic/pages/home_page.dart';

class ShimmerArrows extends StatefulWidget {
  final double spaceTop;
  final double spaceBottom;
  const ShimmerArrows({super.key, this.spaceTop = 0, this.spaceBottom = 0});

  @override
  State<ShimmerArrows> createState() => _ShimmerArrowsState();
}

class _ShimmerArrowsState extends State<ShimmerArrows>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2, milliseconds: 100),
    )..repeat();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SpaceHeight(height: widget.spaceTop),
        AnimatedBuilder(
          animation: _animationController,
          builder: (BuildContext context, Widget? child) {
            return ShaderMask(
              shaderCallback: (bounds) {
                return LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  transform: _SlideGradientTransform(
                    percent: _animationController.value,
                  ),
                  colors: [
                    AppColors.primary.withOpacity(.8),
                    AppColors.primary.withOpacity(0.4),
                    AppColors.primary.withOpacity(0.6),
                    AppColors.primary.withOpacity(.8),
                  ],
                ).createShader(bounds);
              },
              blendMode: BlendMode.srcIn,
              child: Column(
                mainAxisSize: MainAxisSize
                    .min, // Garante que os ícones não ocupem espaço extra
                children: [
                  Container(
                    child: const Icon(
                      Icons.keyboard_double_arrow_down,
                      size: 50,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
        SpaceHeight(height: widget.spaceBottom),
      ],
    );
  }
}

class _SlideGradientTransform extends GradientTransform {
  final double percent;
  const _SlideGradientTransform({required this.percent});

  @override
  Matrix4 transform(Rect bounds, {TextDirection? textDirection}) {
    return Matrix4.translationValues(
        0, (bounds.height + 10) * (percent - 0.5), 0);
  }
}
