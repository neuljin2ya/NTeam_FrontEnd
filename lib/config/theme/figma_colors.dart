import 'package:flutter/material.dart';

/// Figma Variables / Color Styles 기반 컬러 시스템
///
/// 사용:
/// `FigmaColors.primaryMain`
/// `FigmaColors.gray600`
abstract final class FigmaColors {
  FigmaColors._();

  // ---------------------------------------------------------------------------
  // Primary
  // ---------------------------------------------------------------------------

  /// Figma: `Primary/Main`
  static const Color primaryMain = Color(0xFF19191C);

  /// Figma: `Primary/600`
  static const Color primary600 = Color(0xFF002416);

  /// Figma: `Primary/500`
  static const Color primary500 = Color(0xFF004B34);

  /// Figma: `Primary/400`
  static const Color primary400 = Color(0xFF007557);

  /// Figma: `Primary/300`
  static const Color primary300 = Color(0xFF00A07E);

  /// Figma: `Primary/200`
  static const Color primary200 = Color(0xFF35CCA9);

  /// Figma: `Primary/100`
  static const Color primary100 = Color(0xFF82F7D6);

  /// Figma: `Primary/50`
  static const Color primary50 = Color(0xFFD7FFF5);

  // ---------------------------------------------------------------------------
  // Gray
  // ---------------------------------------------------------------------------

  /// Figma: `Gray/600`
  static const Color gray600 = Color(0xFF19191C);

  /// Figma: `Gray/500`
  static const Color gray500 = Color(0xFF27272B);

  /// Figma: `Gray/400`
  static const Color gray400 = Color(0xFF39383D);

  /// Figma: `Gray/300`
  static const Color gray300 = Color(0xFF414249);

  /// Figma: `Gray/200`
  static const Color gray200 = Color(0xFF5B5C61);

  /// Figma: `Gray/100`
  static const Color gray100 = Color(0xFF7E7E8A);

  // ---------------------------------------------------------------------------
  // System Colors
  // ---------------------------------------------------------------------------

  /// Figma: `System/White`
  static const Color white = Color(0xFFFCFDFF);

  /// Figma: `System/Black`
  static const Color black = Color(0xFF141415);

  /// Figma: `System/Error`
  static const Color error = Color(0xFFD83326);

  /// Figma: `System/Warning`
  static const Color warning = Color(0xFFF58942);
}