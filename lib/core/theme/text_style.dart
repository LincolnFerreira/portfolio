import 'package:flutter/material.dart';

class MyTextStyle {
  static TextStyle getTextStyle(BuildContext context, TextStyleType type) {
    double screenWidth = MediaQuery.of(context).size.width;

    // Função para ajustar tamanho de texto baseado na largura da tela
    double scaleFactor = screenWidth < 600 ? 1 : 1.5; // Mobile vs Web

    switch (type) {
      case TextStyleType.displayLarge:
        return TextStyle(
            fontSize: 57 * scaleFactor, fontWeight: FontWeight.w400);
      case TextStyleType.displayMedium:
        return TextStyle(
            fontSize: 45 * scaleFactor, fontWeight: FontWeight.w400);
      case TextStyleType.displaySmall:
        return TextStyle(
            fontSize: 36 * scaleFactor, fontWeight: FontWeight.w400);
      case TextStyleType.headlineLarge:
        return TextStyle(
            fontSize: 32 * scaleFactor, fontWeight: FontWeight.w400);
      case TextStyleType.headlineMedium:
        return TextStyle(
            fontSize: 28 * scaleFactor, fontWeight: FontWeight.w400);
      case TextStyleType.headlineSmall:
        return TextStyle(
            fontSize: 24 * scaleFactor, fontWeight: FontWeight.w400);
      case TextStyleType.titleLarge:
        return TextStyle(
            fontSize: 22 * scaleFactor, fontWeight: FontWeight.w400);
      case TextStyleType.titleMedium:
        return TextStyle(
            fontSize: 16 * scaleFactor, fontWeight: FontWeight.w500);
      case TextStyleType.titleSmall:
        return TextStyle(
            fontSize: 14 * scaleFactor, fontWeight: FontWeight.w500);
      case TextStyleType.bodyLarge:
        return TextStyle(
            fontSize: 16 * scaleFactor, fontWeight: FontWeight.w400);
      case TextStyleType.bodyMedium:
        return TextStyle(
            fontSize: 14 * scaleFactor, fontWeight: FontWeight.w400);
      case TextStyleType.bodySmall:
        return TextStyle(
            fontSize: 12 * scaleFactor, fontWeight: FontWeight.w400);
      case TextStyleType.labelLarge:
        return TextStyle(
            fontSize: 14 * scaleFactor, fontWeight: FontWeight.w500);
      case TextStyleType.labelMedium:
        return TextStyle(
            fontSize: 12 * scaleFactor, fontWeight: FontWeight.w500);
      case TextStyleType.labelSmall:
        return TextStyle(
            fontSize: 11 * scaleFactor, fontWeight: FontWeight.w500);
      default:
        return TextStyle(
            fontSize: 14 * scaleFactor, fontWeight: FontWeight.w400);
    }
  }
}

enum TextStyleType {
  displayLarge,
  displayMedium,
  displaySmall,
  headlineLarge,
  headlineMedium,
  headlineSmall,
  titleLarge,
  titleMedium,
  titleSmall,
  bodyLarge,
  bodyMedium,
  bodySmall,
  labelLarge,
  labelMedium,
  labelSmall
}
