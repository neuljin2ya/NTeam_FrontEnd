import 'package:flutter/material.dart';

import '../config/theme/app_text_styles.dart';
import '../config/theme/figma_colors.dart';

/// 제목과 설명을 함께 보여주는 상태 선택 카드.
class ConditionOptionCard extends StatelessWidget {
  const ConditionOptionCard({
    super.key,
    required this.title,
    required this.description,
    this.onPressed,
    this.width,
    this.contentWidth = 128,
    this.padding = const EdgeInsets.all(16),
    this.backgroundColor = FigmaColors.gray400,
    this.borderColor,
    this.titleColor = FigmaColors.white,
    this.descriptionColor = FigmaColors.white,
    this.borderRadius = 12,
  });

  const ConditionOptionCard.selected({
    super.key,
    required this.title,
    required this.description,
    this.onPressed,
    this.width,
    this.contentWidth = 128,
    this.padding = const EdgeInsets.all(16),
    this.backgroundColor = FigmaColors.primary600,
    this.borderColor = FigmaColors.primary100,
    this.titleColor = FigmaColors.primary50,
    this.descriptionColor = FigmaColors.primary50,
    this.borderRadius = 12,
  });

  /// 카드 제목
  final String title;

  /// 카드 설명
  final String description;

  /// 카드 클릭 이벤트
  final VoidCallback? onPressed;

  /// 카드 너비
  final double? width;

  /// 내부 텍스트 너비
  final double contentWidth;

  /// 카드 안쪽 여백
  final EdgeInsetsGeometry padding;

  /// 카드 배경색
  final Color backgroundColor;

  /// 카드 테두리 색상
  final Color? borderColor;

  /// 제목 색상
  final Color titleColor;

  /// 설명 색상
  final Color descriptionColor;

  /// 카드 둥근 정도
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onPressed,
      child: Container(
        width: width,
        padding: padding,
        decoration: ShapeDecoration(
          color: backgroundColor,
          shape: RoundedRectangleBorder(
            side: _borderSide,
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SizedBox(
              width: contentWidth,
              child: Text(
                title,
                style: AppTextStyles.titleLarge.copyWith(
                  color: titleColor,
                  letterSpacing: -0.18,
                ),
              ),
            ),
            SizedBox(
              width: contentWidth,
              child: Text(
                description,
                style: AppTextStyles.bodyMedium.copyWith(
                  color: descriptionColor,
                ),
              ),
            ),
          ],
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
