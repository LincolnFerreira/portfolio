import 'package:flutter/material.dart';

enum TextStyleType {
  displayLarge57,
  displayMedium45,
  displaySmall36,
  headlineLarge32,
  headlineMedium28,
  headlineSmall24,
  titleLarge22,
  titleMedium16,
  titleSmall14,
  bodyLarge16,
  bodyMedium14,
  bodySmall12,
  labelLarge14,
  labelMedium12,
  labelSmall11,
}

class CustomText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final TextAlign? textAlign;
  final TextStyleType textStyleType;
  final Color? color; // Novo parâmetro color

  const CustomText(
    this.text, {
    Key? key,
    this.style,
    this.textAlign,
    this.textStyleType = TextStyleType.bodySmall12, // Default to bodySmall12
    this.color, // Adicionando o parâmetro color
  }) : super(key: key);

  // Função para obter o estilo de texto responsivo
  TextStyle _getResponsiveTextStyle(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double scaleFactor = screenWidth < 600 ? 1 : 1.5;

    TextStyle baseStyle;

    switch (textStyleType) {
      case TextStyleType.displayLarge57:
        baseStyle =
            TextStyle(fontSize: 57 * scaleFactor, fontWeight: FontWeight.w400);
        break;
      case TextStyleType.displayMedium45:
        baseStyle =
            TextStyle(fontSize: 45 * scaleFactor, fontWeight: FontWeight.w400);
        break;
      case TextStyleType.displaySmall36:
        baseStyle =
            TextStyle(fontSize: 36 * scaleFactor, fontWeight: FontWeight.w400);
        break;
      case TextStyleType.headlineLarge32:
        baseStyle =
            TextStyle(fontSize: 32 * scaleFactor, fontWeight: FontWeight.w400);
        break;
      case TextStyleType.headlineMedium28:
        baseStyle =
            TextStyle(fontSize: 28 * scaleFactor, fontWeight: FontWeight.w400);
        break;
      case TextStyleType.headlineSmall24:
        baseStyle =
            TextStyle(fontSize: 24 * scaleFactor, fontWeight: FontWeight.w400);
        break;
      case TextStyleType.titleLarge22:
        baseStyle =
            TextStyle(fontSize: 22 * scaleFactor, fontWeight: FontWeight.w400);
        break;
      case TextStyleType.titleMedium16:
        baseStyle =
            TextStyle(fontSize: 16 * scaleFactor, fontWeight: FontWeight.w500);
        break;
      case TextStyleType.titleSmall14:
        baseStyle =
            TextStyle(fontSize: 14 * scaleFactor, fontWeight: FontWeight.w500);
        break;
      case TextStyleType.bodyLarge16:
        baseStyle =
            TextStyle(fontSize: 16 * scaleFactor, fontWeight: FontWeight.w400);
        break;
      case TextStyleType.bodyMedium14:
        baseStyle =
            TextStyle(fontSize: 14 * scaleFactor, fontWeight: FontWeight.w400);
        break;
      case TextStyleType.bodySmall12:
        baseStyle =
            TextStyle(fontSize: 12 * scaleFactor, fontWeight: FontWeight.w400);
        break;
      case TextStyleType.labelLarge14:
        baseStyle =
            TextStyle(fontSize: 14 * scaleFactor, fontWeight: FontWeight.w500);
        break;
      case TextStyleType.labelMedium12:
        baseStyle =
            TextStyle(fontSize: 12 * scaleFactor, fontWeight: FontWeight.w500);
        break;
      case TextStyleType.labelSmall11:
        baseStyle =
            TextStyle(fontSize: 11 * scaleFactor, fontWeight: FontWeight.w500);
        break;
      default:
        baseStyle =
            TextStyle(fontSize: 14 * scaleFactor, fontWeight: FontWeight.w400);
    }

    // Se a cor for fornecida, adiciona ao estilo base
    return baseStyle.copyWith(color: color);
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style ?? _getResponsiveTextStyle(context),
      textAlign: textAlign,
    );
  }
}
