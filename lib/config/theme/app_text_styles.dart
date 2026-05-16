import 'package:flutter/material.dart';

import 'app_semantic_colors.dart';

/// SUIT 폰트 기반 공용 타이포그래피.
///
/// 색은 [textTheme]에서 [AppSemanticColors]로 적용한다.
/// 위젯에서 단일 스타일만 쓸 때는 [withPrimaryColor] / [withSecondaryColor]를 사용한다.
abstract final class AppTextStyles {
  AppTextStyles._();

  static const String fontFamily = 'SUIT';

  // ---------------------------------------------------------------------------
  // Headline — 모달 제목, 강조 섹션 (20 / 18)
  // ---------------------------------------------------------------------------

  static const TextStyle headlineLarge = TextStyle(
    fontFamily: fontFamily,
    fontSize: 20,
    fontWeight: FontWeight.w700,
    height: 1.42,
  );

  static const TextStyle headlineMedium = TextStyle(
    fontFamily: fontFamily,
    fontSize: 18,
    fontWeight: FontWeight.w700,
    height: 1.5,
  );

  // ---------------------------------------------------------------------------
  // Title — 앱바, 카드 제목 (18)
  // ---------------------------------------------------------------------------

  static const TextStyle titleLarge = TextStyle(
    fontFamily: fontFamily,
    fontSize: 18,
    fontWeight: FontWeight.w700,
    height: 1.5,
  );

  // ---------------------------------------------------------------------------
  // Body — 본문·입력 (16 / 14)
  // ---------------------------------------------------------------------------

  static const TextStyle bodyLarge = TextStyle(
    fontFamily: fontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w400,
    height: 1.42,
  );

  static const TextStyle bodyMedium = TextStyle(
    fontFamily: fontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 1.5,
  );

  static const TextStyle bodySmall = TextStyle(
    fontFamily: fontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 1.43,
  );

  // ---------------------------------------------------------------------------
  // Label — 탭·태그·버튼 라벨 (16 / 14 / 10)
  // ---------------------------------------------------------------------------

  static const TextStyle labelLarge = TextStyle(
    fontFamily: fontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w700,
    height: 1.42,
  );

  static const TextStyle labelMedium = TextStyle(
    fontFamily: fontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w700,
    height: 1.5,
  );

  static const TextStyle labelSmall = TextStyle(
    fontFamily: fontFamily,
    fontSize: 10,
    fontWeight: FontWeight.w400,
    height: 1.5,
  );

  // ---------------------------------------------------------------------------
  // Button — [AppButton] 크기별
  // ---------------------------------------------------------------------------

  static const TextStyle buttonLarge = TextStyle(
    fontFamily: fontFamily,
    fontSize: 20,
    fontWeight: FontWeight.w700,
    height: 1.42,
    letterSpacing: -0.2,
  );

  static const TextStyle buttonMedium = TextStyle(
    fontFamily: fontFamily,
    fontSize: 18,
    fontWeight: FontWeight.w700,
    height: 1.42,
    letterSpacing: -0.1,
  );

  static const TextStyle buttonSmall = TextStyle(
    fontFamily: fontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w700,
    height: 1.42,
    letterSpacing: -0.1,
  );

  static TextStyle withPrimaryColor(TextStyle style) =>
      style.copyWith(color: AppSemanticColors.textPrimary);

  static TextStyle withSecondaryColor(TextStyle style) =>
      style.copyWith(color: AppSemanticColors.textSecondary);

  static TextStyle withDisabledColor(TextStyle style) =>
      style.copyWith(color: AppSemanticColors.textDisabled);

  /// [ThemeData.textTheme]용 Material 3 매핑.
  static TextTheme textTheme({
    Color primary = AppSemanticColors.textPrimary,
    Color secondary = AppSemanticColors.textSecondary,
  }) {
    return TextTheme(
      headlineLarge: headlineLarge.copyWith(color: primary),
      headlineMedium: headlineMedium.copyWith(color: primary),
      headlineSmall: titleLarge.copyWith(color: primary),
      titleLarge: titleLarge.copyWith(color: primary),
      titleMedium: labelLarge.copyWith(color: primary),
      titleSmall: labelMedium.copyWith(color: primary),
      bodyLarge: bodyLarge.copyWith(color: primary),
      bodyMedium: bodyMedium.copyWith(color: primary),
      bodySmall: bodySmall.copyWith(color: secondary),
      labelLarge: labelLarge.copyWith(color: primary),
      labelMedium: labelMedium.copyWith(color: primary),
      labelSmall: labelSmall.copyWith(color: secondary),
      displayLarge: buttonLarge.copyWith(color: primary),
      displayMedium: buttonMedium.copyWith(color: primary),
      displaySmall: buttonSmall.copyWith(color: primary),
    );
  }
}
