import 'package:flutter/material.dart';

/// Figma **Variables** / Color Styles 에 정의된 원시(primitive) 컬러.
///
/// - Figma 경로 `Collection/Name` → lowerCamelCase static const 멤버.
/// - 각 상수 위 `/// Figma: \`...\`` 주석은 Figma 패널 이름과 **동일**하게 유지.
/// - HEX 값은 Figma Inspect(또는 Variables)에서 복사해 갱신. 임의 색상 추가 금지.
///
/// 사용: `FigmaColors.brand.primary` — 위젯에 `Color(0xFF...)` 리터럴 직접 사용 금지.
abstract final class FigmaColors {
  FigmaColors._();

  // ---------------------------------------------------------------------------
  // Brand — Figma collection: `Brand`
  // ---------------------------------------------------------------------------

  /// Figma: `Brand/Primary`
  static const Color brandPrimary = Color(0xFF1E40AF);

  /// Figma: `Brand/Primary Dark`
  static const Color brandPrimaryDark = Color(0xFF1E3A8A);

  /// Figma: `Brand/Secondary`
  static const Color brandSecondary = Color(0xFF3B82F6);

  /// Figma: `Brand/On Primary`
  static const Color brandOnPrimary = Color(0xFFFFFFFF);

  // ---------------------------------------------------------------------------
  // Neutral — Figma collection: `Neutral`
  // ---------------------------------------------------------------------------

  /// Figma: `Neutral/0`
  static const Color neutral0 = Color(0xFFFFFFFF);

  /// Figma: `Neutral/50`
  static const Color neutral50 = Color(0xFFF9FAFB);

  /// Figma: `Neutral/100`
  static const Color neutral100 = Color(0xFFF3F4F6);

  /// Figma: `Neutral/200`
  static const Color neutral200 = Color(0xFFE5E7EB);

  /// Figma: `Neutral/300`
  static const Color neutral300 = Color(0xFFD1D5DB);

  /// Figma: `Neutral/400`
  static const Color neutral400 = Color(0xFF9CA3AF);

  /// Figma: `Neutral/500`
  static const Color neutral500 = Color(0xFF6B7280);

  /// Figma: `Neutral/600`
  static const Color neutral600 = Color(0xFF4B5563);

  /// Figma: `Neutral/700`
  static const Color neutral700 = Color(0xFF374151);

  /// Figma: `Neutral/800`
  static const Color neutral800 = Color(0xFF1F2937);

  /// Figma: `Neutral/900`
  static const Color neutral900 = Color(0xFF111827);

  // ---------------------------------------------------------------------------
  // Status — Figma collection: `Status`
  // ---------------------------------------------------------------------------

  /// Figma: `Status/Success`
  static const Color statusSuccess = Color(0xFF16A34A);

  /// Figma: `Status/Warning`
  static const Color statusWarning = Color(0xFFF59E0B);

  /// Figma: `Status/Error`
  static const Color statusError = Color(0xFFDC2626);

  /// Figma: `Status/Info`
  static const Color statusInfo = Color(0xFF2563EB);

  // ---------------------------------------------------------------------------
  // Alpha — Figma collection: `Alpha` (오버레이·딤 등)
  // ---------------------------------------------------------------------------

  /// Figma: `Alpha/Scrim`
  static const Color alphaScrim = Color(0x80000000);

  /// Figma: `Alpha/Disabled`
  static const Color alphaDisabled = Color(0x61000000);
}
