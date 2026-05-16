import 'package:flutter/material.dart';

import '../config/theme/figma_colors.dart';

/// ---------------------------------------------------------------------------
/// 버튼 크기 타입
/// ---------------------------------------------------------------------------
///
/// large  : 큰 버튼
/// medium : 중간 버튼
/// small  : 작은 버튼
///
enum AppButtonSize {
  large,
  medium,
  small,
}

/// ---------------------------------------------------------------------------
/// 버튼 스타일 타입
/// ---------------------------------------------------------------------------
///
/// primary : 민트색 메인 버튼
/// white   : 흰색 버튼
/// gray    : 회색 버튼
/// black   : 검정 버튼
///
enum AppButtonStyle {
  primary,
  white,
  gray,
  black,
}

/// ---------------------------------------------------------------------------
/// 공통 버튼 위젯
/// ---------------------------------------------------------------------------
///
/// 사용 예시:
///
/// AppButton(
///   text: '시작하기',
///   onPressed: () {},
/// )
///
/// AppButton(
///   text: '로그인',
///   style: AppButtonStyle.gray,
///   size: AppButtonSize.medium,
///   onPressed: () {},
/// )
///
class AppButton extends StatelessWidget {
  /// 버튼 안 텍스트
  final String text;

  /// 버튼 클릭 이벤트
  final VoidCallback? onPressed;

  /// 버튼 너비
  ///
  /// 값을 넣지 않으면 size 기본값 사용
  final double? width;

  /// 버튼 스타일
  final AppButtonStyle style;

  /// 버튼 크기
  final AppButtonSize size;

  const AppButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.width,
    this.style = AppButtonStyle.primary,
    this.size = AppButtonSize.large,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width ?? _defaultWidth,

        /// 버튼 padding
        padding: EdgeInsets.symmetric(
          vertical: _verticalPadding,
        ),

        /// 버튼 배경 및 radius
        decoration: ShapeDecoration(
          color: _backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(_borderRadius),
          ),
        ),

        child: Center(
          child: Text(
            text,

            /// 버튼 텍스트 스타일
            style: TextStyle(
              color: _textColor,
              fontSize: _fontSize,
              fontFamily: 'SUIT',
              fontWeight: FontWeight.w700,
              height: _lineHeight,
              letterSpacing: _letterSpacing,
            ),
          ),
        ),
      ),
    );
  }

  // ---------------------------------------------------------------------------
  // 버튼 배경색
  // ---------------------------------------------------------------------------

  Color get _backgroundColor {
    switch (style) {
      case AppButtonStyle.primary:
        return FigmaColors.primary100;

      case AppButtonStyle.white:
        return FigmaColors.white;

      case AppButtonStyle.gray:
        return FigmaColors.gray300;

      case AppButtonStyle.black:
        return FigmaColors.black;
    }
  }

  // ---------------------------------------------------------------------------
  // 버튼 텍스트 색상
  // ---------------------------------------------------------------------------

  Color get _textColor {
    switch (style) {
      case AppButtonStyle.primary:
      case AppButtonStyle.white:
        return FigmaColors.black;

      case AppButtonStyle.gray:
        return FigmaColors.white;

      case AppButtonStyle.black:
        return FigmaColors.gray200;
    }
  }

  // ---------------------------------------------------------------------------
  // 버튼 기본 너비
  // ---------------------------------------------------------------------------

  double get _defaultWidth {
    switch (size) {
      case AppButtonSize.large:
        return 335;

      case AppButtonSize.medium:
        return 240;

      case AppButtonSize.small:
        return 74;
    }
  }

  // ---------------------------------------------------------------------------
  // 버튼 세로 padding
  // ---------------------------------------------------------------------------

  double get _verticalPadding {
    switch (size) {
      case AppButtonSize.large:
        return 12;

      case AppButtonSize.medium:
        return 12;

      case AppButtonSize.small:
        return 8;
    }
  }

  // ---------------------------------------------------------------------------
  // 버튼 radius
  // ---------------------------------------------------------------------------

  double get _borderRadius {
    switch (size) {
      case AppButtonSize.large:
        return 16;

      case AppButtonSize.medium:
        return 12;

      case AppButtonSize.small:
        return 8;
    }
  }

  // ---------------------------------------------------------------------------
  // 버튼 폰트 크기
  // ---------------------------------------------------------------------------

  double get _fontSize {
    switch (size) {
      case AppButtonSize.large:
        return 24;

      case AppButtonSize.medium:
        return 20;

      case AppButtonSize.small:
        return 16;
    }
  }

  // ---------------------------------------------------------------------------
  // 버튼 line-height
  // ---------------------------------------------------------------------------

  double get _lineHeight {
    switch (size) {
      case AppButtonSize.large:
        return 1.5;

      case AppButtonSize.medium:
      case AppButtonSize.small:
        return 1.42;
    }
  }

  // ---------------------------------------------------------------------------
  // 버튼 letter-spacing
  // ---------------------------------------------------------------------------

  double get _letterSpacing {
    switch (size) {
      case AppButtonSize.large:
        return -0.48;

      case AppButtonSize.medium:
        return -0.40;

      case AppButtonSize.small:
        return -0.16;
    }
  }
}