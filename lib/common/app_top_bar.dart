import 'package:flutter/material.dart';

import '../config/theme/figma_colors.dart';

/// 화면 상단에서 사용하는 공통 앱 바.
class AppTopBar extends StatelessWidget {
  const AppTopBar({
    super.key,
    required this.title,
    this.onBackPressed,
    this.leading,
    this.trailing,
    this.actionText,
    this.onActionPressed,
    this.width,
    this.height = 58,
    this.padding = const EdgeInsets.symmetric(horizontal: 16, vertical: 17),
    this.titleColor = FigmaColors.white,
    this.actionTextColor = FigmaColors.primary100,
    this.iconColor = FigmaColors.white,
    this.backgroundColor = Colors.transparent,
  });

  const AppTopBar.disabledAction({
    super.key,
    required this.title,
    this.onBackPressed,
    this.leading,
    this.trailing,
    this.actionText,
    this.onActionPressed,
    this.width,
    this.height = 58,
    this.padding = const EdgeInsets.symmetric(horizontal: 16, vertical: 17),
    this.titleColor = FigmaColors.white,
    this.actionTextColor = FigmaColors.gray100,
    this.iconColor = FigmaColors.white,
    this.backgroundColor = Colors.transparent,
  });

  /// 가운데 제목
  final String title;

  /// 뒤로가기 클릭 이벤트
  final VoidCallback? onBackPressed;

  /// 왼쪽 영역 위젯. 없으면 뒤로가기 아이콘을 표시합니다.
  final Widget? leading;

  /// 오른쪽 영역 위젯. [actionText]보다 우선합니다.
  final Widget? trailing;

  /// 오른쪽 액션 텍스트
  final String? actionText;

  /// 오른쪽 액션 클릭 이벤트
  final VoidCallback? onActionPressed;

  /// 앱 바 너비
  final double? width;

  /// 앱 바 높이
  final double height;

  /// 앱 바 안쪽 여백
  final EdgeInsetsGeometry padding;

  /// 제목 색상
  final Color titleColor;

  /// 액션 텍스트 색상
  final Color actionTextColor;

  /// 아이콘 색상
  final Color iconColor;

  /// 배경색
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      color: backgroundColor,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Align(
            alignment: Alignment.centerLeft,
            child: leading ??
                _BackButton(
                  color: iconColor,
                  onPressed: onBackPressed,
                ),
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: titleColor,
              fontSize: 18,
              fontFamily: 'SUIT',
              fontWeight: FontWeight.w700,
              height: 1.5,
              letterSpacing: -0.18,
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: trailing ??
                _ActionTextButton(
                  text: actionText,
                  textColor: actionTextColor,
                  onPressed: onActionPressed,
                ),
          ),
        ],
      ),
    );
  }
}

class _BackButton extends StatelessWidget {
  const _BackButton({
    required this.color,
    this.onPressed,
  });

  final Color color;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: 24,
      child: IconButton(
        padding: EdgeInsets.zero,
        constraints: const BoxConstraints(),
        icon: Icon(
          Icons.chevron_left,
          color: color,
          size: 24,
        ),
        onPressed: onPressed,
      ),
    );
  }
}

class _ActionTextButton extends StatelessWidget {
  const _ActionTextButton({
    required this.text,
    required this.textColor,
    this.onPressed,
  });

  final String? text;
  final Color textColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final String? label = text;

    if (label == null) {
      return const SizedBox.square(dimension: 24);
    }

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onPressed,
      child: Text(
        label,
        style: TextStyle(
          color: textColor,
          fontSize: 16,
          fontFamily: 'SUIT',
          fontWeight: FontWeight.w700,
          height: 1.42,
          letterSpacing: -0.16,
        ),
      ),
    );
  }
}
