import 'package:flutter/material.dart';

import '../config/theme/figma_colors.dart';

/// 텍스트와 색상, 크기를 조절할 수 있는 공통 태그 위젯.
class Tag extends StatelessWidget {
  const Tag({
    super.key,
    required this.text,
    this.width,
    this.height,
    this.backgroundColor = FigmaColors.black,
    this.borderColor,
    this.textColor = FigmaColors.white,
    this.padding = const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
    this.borderRadius = 0,
    this.fontSize = 14,
    this.fontWeight = FontWeight.w700,
  });

  /// 태그 안 텍스트
  final String text;

  /// 태그 너비
  final double? width;

  /// 태그 높이
  final double? height;

  /// 태그 배경색
  final Color backgroundColor;

  /// 태그 테두리 색상
  final Color? borderColor;

  /// 태그 텍스트 색상
  final Color textColor;

  /// 태그 안쪽 여백
  final EdgeInsetsGeometry padding;

  /// 태그 둥근 정도
  final double borderRadius;

  /// 태그 텍스트 크기
  final double fontSize;

  /// 태그 텍스트 굵기
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      alignment: Alignment.center,
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
    );
  }

  BorderSide get _borderSide {
    final Color? color = borderColor;

    if (color == null) {
      return BorderSide.none;
    }

    return BorderSide(color: color);
  }
}
