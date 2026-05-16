import 'package:flutter/material.dart';

import '../config/theme/app_text_styles.dart';
import '../config/theme/figma_colors.dart';

/// 작은 아이콘과 텍스트를 함께 보여주는 상태 액션 버튼.
class StatusActionButton extends StatelessWidget {
  const StatusActionButton({
    super.key,
    required this.text,
    this.onPressed,
    this.icon = Icons.add,
    this.iconWidget,
    this.color = FigmaColors.primary300,
    this.padding = const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
    this.spacing = 4,
    this.iconSize = 16,
    this.fontSize = 14,
    this.fontWeight = FontWeight.w400,
  });

  const StatusActionButton.disabled({
    super.key,
    required this.text,
    this.onPressed,
    this.icon = Icons.add,
    this.iconWidget,
    this.color = FigmaColors.gray100,
    this.padding = const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
    this.spacing = 4,
    this.iconSize = 16,
    this.fontSize = 14,
    this.fontWeight = FontWeight.w400,
  });

  /// 버튼 안 텍스트
  final String text;

  /// 버튼 클릭 이벤트
  final VoidCallback? onPressed;

  /// 기본 아이콘
  final IconData icon;

  /// 직접 넘기는 아이콘 위젯. [icon]보다 우선합니다.
  final Widget? iconWidget;

  /// 아이콘과 텍스트 색상
  final Color color;

  /// 버튼 안쪽 여백
  final EdgeInsetsGeometry padding;

  /// 아이콘과 텍스트 사이 간격
  final double spacing;

  /// 아이콘 크기
  final double iconSize;

  /// 텍스트 크기
  final double fontSize;

  /// 텍스트 굵기
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onPressed,
      child: Padding(
        padding: padding,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            iconWidget ??
                Icon(
                  icon,
                  color: color,
                  size: iconSize,
                ),
            SizedBox(width: spacing),
            Text(
              text,
              style: AppTextStyles.bodyMedium.copyWith(
                color: color,
                fontSize: fontSize,
                fontWeight: fontWeight,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
