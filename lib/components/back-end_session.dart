import 'package:flutter/material.dart';
import 'package:portfolio/core/theme/colors.dart';

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
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 600,
                  width: 700,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColors.background
                            .withOpacity(0.3), // Cor branca com transparência
                        width: 1, // Espessura da borda
                      ),
                      borderRadius: BorderRadius.circular(
                          16), // Raio de borda arredondada
                    ),
                    clipBehavior: Clip
                        .antiAlias, // Garante que o conteúdo respeite o raio
                    child: Image.asset(
                      'assets/image.jpg',
                      fit: BoxFit.fill,
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
