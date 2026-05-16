import 'package:flutter/material.dart';

import '../config/theme/figma_colors.dart';

/// 알약 형태의 공통 탭 버튼.
///
/// 텍스트와 색상을 넘겨서 선택/비선택/비활성 상태에 맞게 사용할 수 있습니다.
class TabButton extends StatelessWidget {
  const TabButton({
    super.key,
    required this.text,
    this.onPressed,
    this.backgroundColor = FigmaColors.gray300,
    this.textColor = FigmaColors.white,
    this.borderColor,
    this.padding = const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
    this.borderRadius = 9999,
    this.fontSize = 14,
    this.fontWeight = FontWeight.w700,
  });

  const TabButton.selected({
    super.key,
    required this.text,
    this.onPressed,
    this.backgroundColor = FigmaColors.primary500,
    this.textColor = FigmaColors.white,
    this.borderColor = FigmaColors.primary100,
    this.padding = const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
    this.borderRadius = 9999,
    this.fontSize = 14,
    this.fontWeight = FontWeight.w700,
  });

  const TabButton.disabled({
    super.key,
    required this.text,
    this.onPressed,
    this.backgroundColor = FigmaColors.gray300,
    this.textColor = FigmaColors.gray100,
    this.borderColor,
    this.padding = const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
    this.borderRadius = 9999,
    this.fontSize = 14,
    this.fontWeight = FontWeight.w700,
  });

  /// 버튼 안 텍스트
  final String text;

  /// 버튼 클릭 이벤트
  final VoidCallback? onPressed;

  /// 버튼 배경색
  final Color backgroundColor;

  /// 버튼 텍스트 색상
  final Color textColor;

  /// 버튼 테두리 색상
  final Color? borderColor;

  /// 버튼 안쪽 여백
  final EdgeInsetsGeometry padding;

  /// 버튼 둥근 정도
  final double borderRadius;

  /// 버튼 텍스트 크기
  final double fontSize;

  /// 버튼 텍스트 굵기
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(borderRadius),
        onTap: onPressed,
        child: Ink(
          padding: padding,
          decoration: ShapeDecoration(
            color: backgroundColor,
            shape: RoundedRectangleBorder(
              side: _borderSide,
              borderRadius: BorderRadius.circular(borderRadius),
            ),
          ),
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
              fontSize: fontSize,
              fontFamily: 'SUIT',
              fontWeight: fontWeight,
              height: 1.5,
            ),
          ),
        ),
      ),
    );
  }

  BorderSide get _borderSide {
    final Color? color = borderColor;

    if (color == null) {
      return BorderSide.none;
    }

    return BorderSide(
      strokeAlign: BorderSide.strokeAlignOutside,
      color: color,
    );
  }
}
