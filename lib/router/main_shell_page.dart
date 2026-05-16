import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../common/app_navigation_bar.dart';
import '../config/theme/figma_colors.dart';
import '../features/download_spot/presentation/viewmodel/download_spot_view_model.dart';
import '../features/home/presentation/viewmodel/home_view_model.dart';
import 'app_router.dart';

/// 하단 [AppNavigationBar]로 홈 · 저장 탭을 전환하는 셸. (+)는 셸 밖 전체 화면.
class MainShellPage extends ConsumerWidget {
  const MainShellPage({
    super.key,
    required this.navigationShell,
  });

  final StatefulNavigationShell navigationShell;

  static const int _homeBranchIndex = 0;
  static const int _downloadSpotBranchIndex = 1;

  AppNavigationBarItem _selectedItem(int index) {
    return switch (index) {
      _homeBranchIndex => AppNavigationBarItem.spot,
      _downloadSpotBranchIndex => AppNavigationBarItem.saved,
      _ => AppNavigationBarItem.none,
    };
  }

  void _onBranchSelected(WidgetRef ref, int index) {
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
    _refreshBranchData(ref, index);
  }

  void _refreshBranchData(WidgetRef ref, int index) {
    switch (index) {
      case _homeBranchIndex:
        unawaited(ref.read(homeViewModelProvider.notifier).loadAllSpots());
      case _downloadSpotBranchIndex:
        unawaited(
          ref.read(downloadSpotViewModelProvider.notifier).loadSavedSpots(),
        );
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final double bottomInset = MediaQuery.viewPaddingOf(context).bottom;

    return Scaffold(
      backgroundColor: FigmaColors.gray500,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Positioned.fill(child: navigationShell),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Material(
              color: Colors.transparent,
              child: Padding(
                padding: EdgeInsets.only(bottom: bottomInset),
                child: AppNavigationBar(
                  selectedItem: _selectedItem(navigationShell.currentIndex),
                  onSpotPressed: () => _onBranchSelected(ref, _homeBranchIndex),
                  onAddPressed: () => context.push(SGRoute.newSpot.route),
                  onSavedPressed: () =>
                      _onBranchSelected(ref, _downloadSpotBranchIndex),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
