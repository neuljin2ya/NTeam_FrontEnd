import 'package:flutter/material.dart';

import 'figma_colors.dart';

/// Figma **Semantic** 변수(텍스트·배경·보더 등) — primitive를 조합만 함.
///
/// - Figma 시맨틱 이름을 `/// Figma: \`...\`` 로 표기.
/// - 값 변경 시 [FigmaColors] 만 수정하고, 시맨틱은 매핑만 조정.
abstract final class AppSemanticColors {
  AppSemanticColors._();

  // ---------------------------------------------------------------------------
  // Text — Figma collection: `Text`
  // ---------------------------------------------------------------------------

  /// Figma: `Text/Primary`
  static const Color textPrimary = FigmaColors.neutral900;

  /// Figma: `Text/Secondary`
  static const Color textSecondary = FigmaColors.neutral600;

  /// Figma: `Text/Disabled`
  static const Color textDisabled = FigmaColors.neutral400;

  /// Figma: `Text/On Brand`
  static const Color textOnBrand = FigmaColors.brandOnPrimary;

  /// Figma: `Text/Link`
  static const Color textLink = FigmaColors.brandPrimary;

  // ---------------------------------------------------------------------------
  // Background — Figma collection: `Background`
  // ---------------------------------------------------------------------------

  /// Figma: `Background/Page`
  static const Color backgroundPage = FigmaColors.neutral0;

  /// Figma: `Background/Surface`
  static const Color backgroundSurface = FigmaColors.neutral50;

  /// Figma: `Background/Elevated`
  static const Color backgroundElevated = FigmaColors.neutral0;

  /// Figma: `Background/Brand`
  static const Color backgroundBrand = FigmaColors.brandPrimary;

  // ---------------------------------------------------------------------------
  // Border — Figma collection: `Border`
  // ---------------------------------------------------------------------------

  /// Figma: `Border/Default`
  static const Color borderDefault = FigmaColors.neutral200;

  /// Figma: `Border/Strong`
  static const Color borderStrong = FigmaColors.neutral300;

  /// Figma: `Border/Focus`
  static const Color borderFocus = FigmaColors.brandPrimary;

  // ---------------------------------------------------------------------------
  // Icon — Figma collection: `Icon`
  // ---------------------------------------------------------------------------

  /// Figma: `Icon/Primary`
  static const Color iconPrimary = FigmaColors.neutral700;

  /// Figma: `Icon/Secondary`
  static const Color iconSecondary = FigmaColors.neutral500;

  /// Figma: `Icon/On Brand`
  static const Color iconOnBrand = FigmaColors.brandOnPrimary;

  // ---------------------------------------------------------------------------
  // Interactive — Figma collection: `Interactive`
  // ---------------------------------------------------------------------------

  /// Figma: `Interactive/Primary`
  static const Color interactivePrimary = FigmaColors.brandPrimary;

  /// Figma: `Interactive/Primary Pressed`
  static const Color interactivePrimaryPressed = FigmaColors.brandPrimaryDark;

  /// Figma: `Interactive/Disabled`
  static const Color interactiveDisabled = FigmaColors.neutral200;
}
