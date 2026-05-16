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
  static const Color textPrimary = FigmaColors.white;

  /// Figma: `Text/Secondary`
  static const Color textSecondary = FigmaColors.gray100;

  /// Figma: `Text/Disabled`
  static const Color textDisabled = FigmaColors.gray200;

  /// Figma: `Text/On Brand`
  static const Color textOnBrand = FigmaColors.black;

  /// Figma: `Text/Link`
  static const Color textLink = FigmaColors.primary100;

  // ---------------------------------------------------------------------------
  // Background — Figma collection: `Background`
  // ---------------------------------------------------------------------------

  /// Figma: `Background/Page`
  static const Color backgroundPage = FigmaColors.black;

  /// Figma: `Background/Surface`
  static const Color backgroundSurface = FigmaColors.gray600;

  /// Figma: `Background/Elevated`
  static const Color backgroundElevated = FigmaColors.gray500;

  /// Figma: `Background/Brand`
  static const Color backgroundBrand = FigmaColors.primary100;

  // ---------------------------------------------------------------------------
  // Border — Figma collection: `Border`
  // ---------------------------------------------------------------------------

  /// Figma: `Border/Default`
  static const Color borderDefault = FigmaColors.gray300;

  /// Figma: `Border/Strong`
  static const Color borderStrong = FigmaColors.gray200;

  /// Figma: `Border/Focus`
  static const Color borderFocus = FigmaColors.primary100;

  // ---------------------------------------------------------------------------
  // Icon — Figma collection: `Icon`
  // ---------------------------------------------------------------------------

  /// Figma: `Icon/Primary`
  static const Color iconPrimary = FigmaColors.white;

  /// Figma: `Icon/Secondary`
  static const Color iconSecondary = FigmaColors.gray100;

  /// Figma: `Icon/On Brand`
  static const Color iconOnBrand = FigmaColors.black;

  // ---------------------------------------------------------------------------
  // Interactive — Figma collection: `Interactive`
  // ---------------------------------------------------------------------------

  /// Figma: `Interactive/Primary`
  static const Color interactivePrimary = FigmaColors.primary100;

  /// Figma: `Interactive/Primary Pressed`
  static const Color interactivePrimaryPressed = FigmaColors.primary200;

  /// Figma: `Interactive/Disabled`
  static const Color interactiveDisabled = FigmaColors.gray300;
}
