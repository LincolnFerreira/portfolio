import 'package:flutter/material.dart';
import 'package:portfolio/core/theme/colors.dart';

class CustomContainer extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;

  const CustomContainer({
    required this.title,
    required this.subtitle,
    required this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF1E1E1E),
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // Alinhamento à esquerda
        children: [
          Icon(
            icon,
            color: AppColors.primary,
            size: 40,
          ),
          const SizedBox(height: 12), // Espaço entre o ícone e o texto
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8), // Espaço entre título e descrição
          Text(
            subtitle,
            style: TextStyle(
              color: Colors.white.withOpacity(0.7),
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
