import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../config/theme/app_text_styles.dart';
import '../config/theme/figma_colors.dart';

/// 아이콘과 텍스트를 함께 보여주는 선택 옵션 카드.
class ObstacleOptionCard extends StatelessWidget {
  const ObstacleOptionCard({
    super.key,
    required this.text,
    this.onPressed,
    this.icon,
    this.svgIcon,
    this.iconWidget,
    this.backgroundColor = FigmaColors.gray300,
    this.textColor = FigmaColors.white,
    this.iconColor = FigmaColors.white,
    this.borderColor,
    this.borderWidth = 1,
    this.width = 100,
    this.height = 100,
    this.padding = const EdgeInsets.all(12),
    this.borderRadius = 12,
    this.iconSize = 30,
    this.spacing = 4,
  });

  const ObstacleOptionCard.selected({
    super.key,
    required this.text,
    this.onPressed,
    this.icon,
    this.svgIcon,
    this.iconWidget,
    this.backgroundColor = FigmaColors.primary700,
    this.textColor = FigmaColors.primary50,
    this.iconColor = FigmaColors.primary50,
    this.borderColor = FigmaColors.primaryMain,
    this.borderWidth = 1,
    this.width = 100,
    this.height = 100,
    this.padding = const EdgeInsets.all(12),
    this.borderRadius = 12,
    this.iconSize = 30,
    this.spacing = 4,
  });

  /// 카드 안 텍스트
  final String text;

  /// 카드 클릭 이벤트
  final VoidCallback? onPressed;

  /// 기본 Flutter 아이콘
  final IconData? icon;

  /// SVG asset 경로
  final String? svgIcon;

  /// 직접 넘기는 아이콘 위젯. [svgIcon], [icon]보다 우선합니다.
  final Widget? iconWidget;

  /// 카드 배경색
  final Color backgroundColor;

  /// 텍스트 색상
  final Color textColor;

  /// 아이콘 색상
  final Color iconColor;

  /// 카드 테두리 색상. null이면 테두리 없음.
  final Color? borderColor;

  /// 카드 테두리 두께
  final double borderWidth;

  /// 카드 너비
  final double width;

  /// 카드 높이
  final double height;

  /// 카드 안쪽 여백
  final EdgeInsetsGeometry padding;

  /// 카드 둥근 정도
  final double borderRadius;

  /// 아이콘 크기
  final double iconSize;

  /// 아이콘과 텍스트 사이 간격
  final double spacing;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _buildIcon(),
            SizedBox(height: spacing),
            Text(
              text,
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: AppTextStyles.bodyMedium.copyWith(color: textColor),
            ),
          ],
        ),
      ),
    );
  }

  BorderSide get _borderSide {
    // 테두리 유무에 따라 내부 레이아웃이 달라지지 않도록, 미지정 시에도 동일 두께로 투명 테두리를 둡니다.
    return BorderSide(
      color: borderColor ?? Colors.transparent,
      width: borderWidth,
    );
  }

  Widget _buildIcon() {
    final Widget? customIcon = iconWidget;
    final String? assetPath = svgIcon;
    final IconData? materialIcon = icon;

    return SizedBox.square(
      dimension: iconSize,
      child: Center(
        child: _buildIconContent(
          customIcon: customIcon,
          assetPath: assetPath,
          materialIcon: materialIcon,
        ),
      ),
    );
  }

  Widget _buildIconContent({
    required Widget? customIcon,
    required String? assetPath,
    required IconData? materialIcon,
  }) {
    if (customIcon != null) {
      return customIcon;
    }

    if (assetPath != null) {
      return SvgPicture.asset(
        assetPath,
        width: iconSize,
        height: iconSize,
        colorFilter: ColorFilter.mode(
          iconColor,
          BlendMode.srcIn,
        ),
      );
    }

    return Icon(
      materialIcon ?? Icons.category_outlined,
      color: iconColor,
      size: iconSize,
    );
  }
}
