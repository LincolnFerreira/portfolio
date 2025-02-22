import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'colors.dart';

class AppTextTheme {
  static TextTheme get textTheme {
    return TextTheme(
      displayLarge: GoogleFonts.inter(
        fontSize: 32,
        color: AppColors.textPrimary,
      ),
      displayMedium: GoogleFonts.inter(
        fontSize: 28,
        color: AppColors.textPrimary,
      ),
      displaySmall: GoogleFonts.inter(
        fontSize: 24,
        color: AppColors.textPrimary,
      ),
      headlineLarge: GoogleFonts.inter(
        fontSize: 20,
        color: AppColors.textPrimary,
      ),
      headlineMedium: GoogleFonts.inter(
        fontSize: 18,
        color: AppColors.textPrimary,
      ),
      bodyLarge: GoogleFonts.inter(
        fontSize: 16,
        color: AppColors.textPrimary,
      ),
      bodyMedium: GoogleFonts.inter(
        fontSize: 14,
        color: AppColors.textPrimary,
      ),
      bodySmall: GoogleFonts.inter(
        fontSize: 12,
        color: AppColors.textSecondary,
      ),
      labelLarge: GoogleFonts.inter(
        fontSize: 16,
        color: AppColors.textPrimary,
      ),
      labelSmall: GoogleFonts.inter(
        fontSize: 10,
        fontWeight: FontWeight.w400,
        color: AppColors.textSecondary,
      ),
    );
  }
}
