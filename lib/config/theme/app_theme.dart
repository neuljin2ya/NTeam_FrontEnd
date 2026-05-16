import 'package:flutter/material.dart';

import 'app_semantic_colors.dart';
import 'app_text_styles.dart';
import 'figma_colors.dart';

/// [FigmaColors] · [AppSemanticColors] 기반 [ThemeData].
///
/// `my_app.dart`의 `FlexThemeData` 대신 사용할 때 이 팩토리만 호출.
abstract final class AppTheme {
  AppTheme._();

  static ThemeData dark() => light();

  static ThemeData light() {
    const ColorScheme colorScheme = ColorScheme(
      brightness: Brightness.dark,
      primary: FigmaColors.primary100,
      onPrimary: FigmaColors.black,
      secondary: FigmaColors.primary500,
      onSecondary: FigmaColors.white,
      error: FigmaColors.error,
      onError: FigmaColors.white,
      surface: AppSemanticColors.backgroundSurface,
      onSurface: AppSemanticColors.textPrimary,
    );

    return ThemeData(
      useMaterial3: true,
      colorScheme: colorScheme,
      scaffoldBackgroundColor: AppSemanticColors.backgroundPage,
      dividerColor: AppSemanticColors.borderDefault,
      fontFamily: AppTextStyles.fontFamily,
      textTheme: AppTextStyles.textTheme(),
      appBarTheme: const AppBarTheme(
        backgroundColor: AppSemanticColors.backgroundPage,
        foregroundColor: AppSemanticColors.textPrimary,
        elevation: 0,
        scrolledUnderElevation: 0,
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppSemanticColors.backgroundElevated,
        labelStyle: AppTextStyles.withSecondaryColor(AppTextStyles.bodyLarge),
        hintStyle: AppTextStyles.withDisabledColor(AppTextStyles.bodyLarge),
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: AppSemanticColors.borderDefault),
          borderRadius: BorderRadius.circular(8),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppSemanticColors.borderDefault),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppSemanticColors.borderFocus),
          borderRadius: BorderRadius.circular(8),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: FigmaColors.error),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppSemanticColors.interactivePrimary,
          foregroundColor: AppSemanticColors.textOnBrand,
          disabledBackgroundColor: AppSemanticColors.interactiveDisabled,
          disabledForegroundColor: AppSemanticColors.textDisabled,
        ),
      ),
    );
  }
}
