import 'package:flutter/material.dart';
import 'package:portfolio/app_icons_icons.dart';
import 'package:portfolio/components/button.dart';
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
                const SizedBox(height: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 48),
                    GradientButton(
                      filled: true,
                      text: "Currículo",
                      icon: Icons.file_download_outlined,
                      onPressed: () {},
                    )
                  ],
                ),
              ]),
          const SizedBox(height: 24),
          const Spacer(),
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage('photo.png'),
                backgroundColor: Colors.transparent,
              ),
              SizedBox(height: 56),
              Row(
                children: [
                  SocialIcon(
                      icon: AppIcons.github_squared,
                      label: "Github",
                      url: "https://github.com"),
                  SizedBox(width: 58),
                  SocialIcon(
                      icon: AppIcons.linkedin_squared,
                      label: "LinkedIn",
                      url: "https://linkedin.com"),
                  SizedBox(width: 58),
                  SocialIcon(
                      icon: AppIcons.medium,
                      label: "Medium",
                      url: "https://medium.com"),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  // Função para criar ícones de redes sociais
}

class SocialIcon extends StatelessWidget {
  final IconData icon;
  final String label;
  final String url;

  const SocialIcon({
    super.key,
    required this.icon,
    required this.label,
    required this.url,
  });

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: Column(
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
      ),
    );
  }
}
