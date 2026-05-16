import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_semantic_colors.dart';
import 'figma_colors.dart';

/// [FigmaColors] · [AppSemanticColors] 기반 [ThemeData].
///
/// `my_app.dart`의 `FlexThemeData` 대신 사용할 때 이 팩토리만 호출.
abstract final class AppTheme {
  AppTheme._();

  static ThemeData light() {
    const ColorScheme colorScheme = ColorScheme(
      brightness: Brightness.light,
      primary: FigmaColors.brandPrimary,
      onPrimary: FigmaColors.brandOnPrimary,
      secondary: FigmaColors.brandSecondary,
      onSecondary: FigmaColors.brandOnPrimary,
      error: FigmaColors.statusError,
      onError: FigmaColors.brandOnPrimary,
      surface: AppSemanticColors.backgroundSurface,
      onSurface: AppSemanticColors.textPrimary,
    );

    return ThemeData(
      useMaterial3: true,
      colorScheme: colorScheme,
      scaffoldBackgroundColor: AppSemanticColors.backgroundPage,
      dividerColor: AppSemanticColors.borderDefault,
      textTheme: GoogleFonts.nunitoTextTheme(),
      appBarTheme: const AppBarTheme(
        backgroundColor: AppSemanticColors.backgroundPage,
        foregroundColor: AppSemanticColors.textPrimary,
        elevation: 0,
        scrolledUnderElevation: 0,
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: AppSemanticColors.borderDefault),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppSemanticColors.borderFocus),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppSemanticColors.interactivePrimary,
          foregroundColor: AppSemanticColors.textOnBrand,
          disabledBackgroundColor: AppSemanticColors.interactiveDisabled,
        ),
      ),
    );
  }
}
