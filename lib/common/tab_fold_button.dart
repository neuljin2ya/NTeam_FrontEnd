import 'package:flutter/material.dart';

import '../config/theme/app_text_styles.dart';
import '../config/theme/figma_colors.dart';

/// 접기/펼치기 상태를 표시하는 탭 헤더 버튼.
class TabFoldButton extends StatelessWidget {
  const TabFoldButton({
    super.key,
    required this.text,
    this.onPressed,
    this.isExpanded = false,
    this.leading,
    this.showLeading = false,
    this.leadingIcon = Icons.error_outline,
    this.width = 328,
    this.height = 47,
    this.textColor = FigmaColors.white,
    this.iconColor = FigmaColors.gray100,
    this.padding = EdgeInsets.zero,
  });

  /// 탭 텍스트
  final String text;

  /// 탭 클릭 이벤트
  final VoidCallback? onPressed;

  /// 펼침 여부
  final bool isExpanded;

  /// 왼쪽 커스텀 위젯
  final Widget? leading;

  /// 기본 왼쪽 아이콘 표시 여부
  final bool showLeading;

  /// 기본 왼쪽 아이콘
  final IconData leadingIcon;

  /// 탭 너비
  final double width;

  /// 탭 높이
  final double height;

  /// 텍스트 색상
  final Color textColor;

  /// 아이콘 색상
  final Color iconColor;

  /// 탭 안쪽 여백
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        child: Row(
          children: <Widget>[
            if (_hasLeading) ...<Widget>[
              _buildLeading(),
              const SizedBox(width: 8),
            ],
            Expanded(
              child: Text(
                text,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: AppTextStyles.labelLarge.copyWith(
                  color: textColor,
                  letterSpacing: -0.16,
                ),
              ),
            ),
            const SizedBox(width: 8),
            Icon(
              isExpanded ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
              color: iconColor,
              size: 24,
            ),
          ],
        ),
      ),
    );
  }

  bool get _hasLeading {
    return leading != null || showLeading;
  }

  Widget _buildLeading() {
    final Widget? customLeading = leading;

    if (customLeading != null) {
      return SizedBox.square(
        dimension: 20,
        child: Center(child: customLeading),
      );
    }

    return Icon(
      leadingIcon,
      color: textColor,
      size: 24,
    );
  }
}
