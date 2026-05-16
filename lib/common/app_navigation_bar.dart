import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../config/theme/figma_colors.dart';

enum AppNavigationBarItem {
  none,
  spot,
  saved,
}

class AppNavigationBar extends StatelessWidget {
  const AppNavigationBar({
    super.key,
    this.selectedItem = AppNavigationBarItem.none,
    this.onSpotPressed,
    this.onAddPressed,
    this.onSavedPressed,
  });

  final AppNavigationBarItem selectedItem;
  final VoidCallback? onSpotPressed;
  final VoidCallback? onAddPressed;
  final VoidCallback? onSavedPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 132,
      child: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: _NavigationBarBody(
              selectedItem: selectedItem,
              onSpotPressed: onSpotPressed,
              onSavedPressed: onSavedPressed,
            ),
          ),
          _CenterAddButton(onPressed: onAddPressed),
        ],
      ),
    );
  }
}

class _NavigationBarBody extends StatelessWidget {
  const _NavigationBarBody({
    required this.selectedItem,
    this.onSpotPressed,
    this.onSavedPressed,
  });

  final AppNavigationBarItem selectedItem;
  final VoidCallback? onSpotPressed;
  final VoidCallback? onSavedPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 96,
      padding: const EdgeInsets.fromLTRB(44, 13, 44, 16),
      decoration: const BoxDecoration(
        color: FigmaColors.gray500,
        borderRadius: BorderRadius.vertical(top: Radius.circular(22)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          _NavigationBarTile(
            label: '스팟 탐색',
            iconPath: 'assets/icons/icon_spot.svg',
            isSelected: selectedItem == AppNavigationBarItem.spot,
            onPressed: onSpotPressed,
          ),
          _NavigationBarTile(
            label: '저장',
            iconPath: 'assets/icons/icon_download.svg',
            isSelected: selectedItem == AppNavigationBarItem.saved,
            onPressed: onSavedPressed,
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
    return isSelected ? FigmaColors.primary100 : FigmaColors.gray100;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onPressed,
      child: SizedBox(
        width: 64,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox.square(
              dimension: 36,
              child: Center(
                child: SvgPicture.asset(
                  iconPath,
                  width: 36,
                  height: 36,
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
              overflow: TextOverflow.visible,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: _contentColor,
                fontSize: 14,
                fontFamily: 'SUIT',
                fontWeight: FontWeight.w400,
                height: 1.5,
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
    return Container(
      width: 78,
      height: 78,
      decoration: const BoxDecoration(
        color: FigmaColors.white,
        shape: BoxShape.circle,
      ),
      alignment: Alignment.center,
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: onPressed,
        child: Container(
          width: 70,
          height: 70,
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
    );
  }
}
