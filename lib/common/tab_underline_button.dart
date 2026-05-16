import 'package:flutter/material.dart';

import '../config/theme/figma_colors.dart';

/// 하단 라인으로 선택 상태를 표시하는 공통 탭 버튼.
class TabUnderlineButton extends StatelessWidget {
  const TabUnderlineButton({
    super.key,
    required this.text,
    this.onPressed,
    this.textColor = FigmaColors.white,
    this.underlineColor,
    this.underlineWidth = 3,
    this.padding = const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
    this.fontSize = 16,
    this.fontWeight = FontWeight.w700,
  });

  const TabUnderlineButton.selected({
    super.key,
    required this.text,
    this.onPressed,
    this.textColor = FigmaColors.white,
    this.underlineColor = FigmaColors.primary100,
    this.underlineWidth = 3,
    this.padding = const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
    this.fontSize = 16,
    this.fontWeight = FontWeight.w700,
  });

  const TabUnderlineButton.disabled({
    super.key,
    required this.text,
    this.onPressed,
    this.textColor = FigmaColors.gray100,
    this.underlineColor,
    this.underlineWidth = 3,
    this.padding = const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
    this.fontSize = 16,
    this.fontWeight = FontWeight.w700,
  });

  /// 버튼 안 텍스트
  final String text;

  /// 버튼 클릭 이벤트
  final VoidCallback? onPressed;

  /// 버튼 텍스트 색상
  final Color textColor;

  /// 하단 라인 색상
  final Color? underlineColor;

  /// 하단 라인 두께
  final double underlineWidth;

  /// 버튼 안쪽 여백
  final EdgeInsetsGeometry padding;

  /// 버튼 텍스트 크기
  final double fontSize;

  /// 버튼 텍스트 굵기
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onPressed,
        child: Ink(
          padding: padding,
          decoration: BoxDecoration(
            border: _border,
          ),
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
              fontSize: fontSize,
              fontFamily: 'SUIT',
              fontWeight: fontWeight,
              height: 1.42,
              letterSpacing: -0.16,
            ),
          ),
        ),
      ),
    );
  }

  Border? get _border {
    final Color? color = underlineColor;

    if (color == null) {
      return null;
    }

    return Border(
      bottom: BorderSide(
        width: underlineWidth,
        color: color,
      ),
    );
  }
}
