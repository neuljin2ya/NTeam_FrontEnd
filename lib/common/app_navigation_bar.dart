import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../config/theme/figma_colors.dart';

enum AppNavigationBarItem {
  none,
  spot,
  saved,
}

/// Figma 하단 네비게이션 (스팟 탐색 · + · 저장).
class AppNavigationBar extends StatelessWidget {
  const AppNavigationBar({
    super.key,
    this.selectedItem = AppNavigationBarItem.none,
    this.onSpotPressed,
    this.onAddPressed,
    this.onSavedPressed,
  });

  static const double bodyHeight = 96;
  static const double centerButtonSize = 78;
  static const double centerButtonInnerSize = 70;

  /// 본체(96) + 중앙 버튼이 본체 위로 36px 돌출.
  static const double barHeight = 132;

  /// 홈 인셋·바텀시트 패딩용 (네비 + 시스템 하단 safe area).
  static double bottomInset(BuildContext context) {
    return barHeight + MediaQuery.viewPaddingOf(context).bottom;
  }

  static const double _horizontalPadding = 56;
  static const double _tileWidth = 64;
  static const double _iconSize = 36;

  final AppNavigationBarItem selectedItem;
  final VoidCallback? onSpotPressed;
  final VoidCallback? onAddPressed;
  final VoidCallback? onSavedPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: barHeight,
      width: double.infinity,
      child: Stack(
        clipBehavior: Clip.hardEdge,
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: bodyHeight,
              padding: const EdgeInsets.fromLTRB(
                _horizontalPadding,
                13,
                _horizontalPadding,
                16,
              ),
              decoration: const BoxDecoration(
                color: FigmaColors.gray500,
                borderRadius: BorderRadius.vertical(top: Radius.circular(22)),
              ),
              child: Row(
                children: <Widget>[
                  _NavigationBarTile(
                    label: '스팟 탐색',
                    iconPath: 'assets/icons/icon_spot.svg',
                    isSelected: selectedItem == AppNavigationBarItem.spot,
                    onPressed: onSpotPressed,
                  ),
                  const Spacer(),
                  SizedBox(width: centerButtonSize),
                  const Spacer(),
                  _NavigationBarTile(
                    label: '저장',
                    iconPath: 'assets/icons/icon_download.svg',
                    isSelected: selectedItem == AppNavigationBarItem.saved,
                    onPressed: onSavedPressed,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 0,
            child: _CenterAddButton(onPressed: onAddPressed),
          ),
        ],
      ),
    );
  }
}

class _NavigationBarTile extends StatelessWidget {
  const _NavigationBarTile({
    required this.label,
    required this.iconPath,
    required this.isSelected,
    this.onPressed,
  });

  final String label;
  final String iconPath;
  final bool isSelected;
  final VoidCallback? onPressed;

  Color get _contentColor {
    return isSelected ? FigmaColors.primaryMain : FigmaColors.gray100;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onPressed,
      child: SizedBox(
        width: AppNavigationBar._tileWidth,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox.square(
              dimension: AppNavigationBar._iconSize,
              child: Center(
                child: SvgPicture.asset(
                  iconPath,
                  width: AppNavigationBar._iconSize,
                  height: AppNavigationBar._iconSize,
                  colorFilter: ColorFilter.mode(
                    _contentColor,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 4),
            Text(
              label,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: _contentColor,
                fontSize: 14,
                fontFamily: 'SUIT',
                fontWeight: FontWeight.w400,
                height: 1.43,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _CenterAddButton extends StatelessWidget {
  const _CenterAddButton({this.onPressed});

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        customBorder: const CircleBorder(),
        onTap: onPressed,
        child: Ink(
          width: AppNavigationBar.centerButtonSize,
          height: AppNavigationBar.centerButtonSize,
          decoration: const BoxDecoration(
            color: FigmaColors.white,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Container(
              width: AppNavigationBar.centerButtonInnerSize,
              height: AppNavigationBar.centerButtonInnerSize,
              decoration: const BoxDecoration(
                color: FigmaColors.primary100,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.add,
                color: FigmaColors.white,
                size: 45,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
