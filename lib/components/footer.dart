import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:portfolio/app_icons_icons.dart';
import 'package:portfolio/components/button.dart';
import 'package:portfolio/components/header_component.dart';

class CustomFooter extends StatelessWidget {
  const CustomFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 800,
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF72ACF3),
                Color(0xFFA374CA),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.center,
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF12171D),
                    Color.fromARGB(0, 0, 0, 0),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          ),
        ),
        Container(
          height: 800,
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                width: 600,
                child: Column(
                  children: [
                    const SizedBox(height: 100),
                    const Text(
                      "Juntos, podemos transformar ideias em projetos incríveis",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 8),
                    const FractionallySizedBox(
                      widthFactor: 0.66,
                      child: Text(
                        "Adoro novos desafios. Tem um? Vamos falar sobre ele!",
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 16,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(width: 16),
                        GradientButton(
                          text: "WhatsApp",
                          filled: true,
                          onPressed: () {},
                        ),
                        OutlineGradientButton(
                          gradient: const LinearGradient(
                            colors: [
                              Color(0xFF72ACF3),
                              Color(0xFFA374CA),
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                          strokeWidth: 1,
                          radius: const Radius.circular(8),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 90,
                            vertical: 17,
                          ),
                          child: const MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: Text(
                              'E-mail',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 24),
                    const SizedBox(height: 16),
                    const SizedBox(height: 16),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  top: 110.0,
                ),
                child: Divider(color: Colors.white30),
              ),
              const SizedBox(height: 40),
              const Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 100, right: 100),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          "© 2024 Todos os direitos reservados.",
                          style: TextStyle(
                            color: Colors.white60,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            "Contato",
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            "(+55) 11 91349-7674",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            "lincolnfdjcarmo@gmail.com",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "Redes Sociais",
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(height: 20),
                          Row(
                            children: [
                              SocialIcon(
                                icon: AppIcons.github_squared,
                                label: "Github",
                                url: "https://github.com",
                              ),
                              SizedBox(width: 58),
                              SocialIcon(
                                icon: AppIcons.linkedin_squared,
                                label: "LinkedIn",
                                url: "https://linkedin.com",
                              ),
                              SizedBox(width: 58),
                              SocialIcon(
                                icon: AppIcons.medium,
                                label: "Medium",
                                url: "https://medium.com",
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
