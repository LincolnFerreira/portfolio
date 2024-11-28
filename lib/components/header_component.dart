import 'package:flutter/material.dart';
import 'package:portfolio/app_icons_icons.dart';
import 'package:portfolio/core/theme/colors.dart';

class HeaderComponent extends StatelessWidget {
  const HeaderComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 378,
      child: Row(
        children: [
          Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: 90,
                      height: 1,
                      color: AppColors.primary,
                    ),
                    const SizedBox(width: 8),
                    const Text(
                      "Desenvolvedor mobile/back-end",
                      style: TextStyle(
                        color: AppColors.primary,
                        fontSize: 22,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                const Text(
                  "Lincoln Ferreira",
                  style: TextStyle(
                    color: AppColors.primary,
                    fontSize: 64,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  width: 600, // Defina uma largura máxima, se necessário
                  child: Text(
                    'Sou um desenvolvedor mobile e back-end com 3 anos de experiência em Dart/Flutter e Node.js. '
                    'Trabalhei em projetos desafiadores em empresas como Evopass e Alpe, sempre focando em criar soluções '
                    'inovadoras e eficientes que atendam às necessidades dos usuários.',
                    style: TextStyle(
                      color: Color(0xffF0F0F0),
                      fontSize:
                          18, // Ajuste o tamanho da fonte conforme necessário
                    ),
                    // Não é necessário definir maxLines nem overflow
                  ),
                ),
                const SizedBox(height: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 48),
                    GradientButtonWithIcon(
                      icon: Icons.download_rounded,
                      onPressed: () {},
                    )
                  ],
                ),
              ]),
          const SizedBox(height: 24),
          const Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 85,
                backgroundImage: NetworkImage(
                    'https://example.com/link-da-sua-imagem-de-perfil'),
              ),
              const SizedBox(height: 56),
              Row(
                children: [
                  _socialIcon(
                      AppIcons.github_squared, "Github", "https://github.com"),
                  const SizedBox(width: 58),
                  _socialIcon(AppIcons.linkedin_squared, "LinkedIn",
                      "https://linkedin.com"),
                  const SizedBox(width: 58),
                  _socialIcon(AppIcons.medium, "Medium", "https://medium.com"),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  // Função para criar ícones de redes sociais
  Widget _socialIcon(IconData icon, String label, String url) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            // Lógica para abrir o link de rede social
          },
          child: Icon(
            icon,
            color: Colors.white,
            size: 30,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: const TextStyle(
            color: Color(0xFFB0BEC5),
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}

class GradientButtonWithIcon extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;

  const GradientButtonWithIcon({
    Key? key,
    required this.icon,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius:
          BorderRadius.circular(30), // Defina o raio para bordas arredondadas
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              Color(0xFF8E44AD), // Cor 1 do gradiente
              Color(0xFF4C3F91), // Cor 2 do gradiente
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(30), // Bordas arredondadas
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              color: Colors.white, // Cor do ícone
            ),
            const SizedBox(width: 8),
            const Text(
              'Curriculo',
              style: TextStyle(
                color: Colors.white, // Cor do texto
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
