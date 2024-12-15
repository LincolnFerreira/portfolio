import 'package:flutter/material.dart';
import 'package:portfolio/components/skill_card_item.dart';
import 'package:portfolio/core/theme/colors.dart';
import 'package:portfolio/core/theme/sizes.dart';

class BackEndSession extends StatelessWidget {
  const BackEndSession({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 900,
      child: Column(
        children: [
          const SizedBox(height: 100),
          const Text(
            'Back-end',
            style: TextStyle(fontSize: 42),
          ),
          const SizedBox(height: AppSizes.spacingXs),
          const FractionallySizedBox(
            alignment: Alignment.center,
            widthFactor: 0.5,
            child: Text(
              'Vou simular um ambiente similar ou conceitos que utilizei em outra empresas, de maneira mais simples.',
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 100),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 80.0,
                      bottom: 80.0,
                      right: 100.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Projeto de escopo real',
                          style: TextStyle(
                            color: AppColors.primary,
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          'Evopass',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                          ),
                        ),
                        const SizedBox(height: 40),
                        Text(
                          'O back-end da Evopass é a espinha dorsal tecnológica que suporta e integra 5 aplicações distintas, oferecendo soluções robustas e escaláveis para atender às demandas de nossos serviços.',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.7),
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(height: 40),
                        const Row(children: [
                          SkillCardItem(
                              image:
                                  "https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/typescript/typescript-original.svg"),
                          SkillCardItem(
                              image:
                                  "https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/nestjs/nestjs-original.svg"),
                          SkillCardItem(
                              image:
                                  "https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/prisma/prisma-original.svg"),
                          SkillCardItem(
                              image:
                                  "https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/firebase/firebase-original.svg"),
                          SkillCardItem(
                              image:
                                  "https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/googlecloud/googlecloud-original.svg"),
                        ])
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 800,
                  width: 800,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8),
                        bottomLeft: Radius.circular(8),
                      ),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(4, 1),
                          blurRadius: 0,
                          spreadRadius: 1,
                        )
                      ]),
                  child: ShaderMask(
                    shaderCallback: (Rect bounds) {
                      return const LinearGradient(
                        colors: [
                          Colors.black,
                          Color.fromARGB(249, 0, 0, 0),
                          Color.fromARGB(239, 0, 0, 0),
                          Color.fromARGB(38, 0, 0, 0),
                        ],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ).createShader(bounds);
                    },
                    blendMode: BlendMode.dstIn,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(8),
                        bottomLeft: Radius.circular(8),
                      ),
                      child: Image.asset(
                        'image.jpeg',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
