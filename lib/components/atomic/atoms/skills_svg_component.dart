import 'package:flutter/material.dart';
import 'package:portfolio/components/atomic/atoms/imagem_container.dart';

class SkillsSvgComponent extends StatelessWidget {
  final List<String> skills;

  const SkillsSvgComponent({
    super.key,
    required this.skills,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Primeira imagem
            ImageContainer(
              imagePath: skills[0],
              size: 100, // Tamanho responsivo
              placeholderImage: 'assets/images/default_image.png',
            ),
            SizedBox(width: 20), // Espaço entre a primeira e a segunda imagem
            // Segunda imagem
            ImageContainer(
              imagePath: skills[1],
              size: 100, // Tamanho responsivo
              placeholderImage: 'assets/images/default_image.png',
            ),
          ],
        ),
        Padding(
          padding:
              const EdgeInsets.only(top: 10), // Espaço abaixo da segunda imagem
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Terceira imagem (abaixo da segunda)
              ImageContainer(
                imagePath: skills[1],
                size: 100, // Tamanho responsivo
                placeholderImage: 'assets/images/default_image.png',
              ),
              SizedBox(width: 20), // Espaço entre a terceira e a quarta imagem
              // Quarta imagem (ao lado da terceira)
              ImageContainer(
                imagePath: skills[1],
                size: 100, // Tamanho responsivo
                placeholderImage: 'assets/images/default_image.png',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
