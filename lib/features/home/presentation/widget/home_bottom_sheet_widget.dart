import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../common/difficulty_tag.dart';
import '../../../../config/theme/app_semantic_colors.dart';
import '../../../../config/theme/figma_colors.dart';
import '../../../../router/app_router.dart';
import 'home_spot_card_widget.dart';

class HomeBottomSheetWidget extends StatelessWidget {
  const HomeBottomSheetWidget({
    super.key,
    required this.scrollController,
    required this.onHandleTap,
  });

  final ScrollController scrollController;
  final VoidCallback onHandleTap;

  static const List<_HomeSpotItem> _sampleSpots = <_HomeSpotItem>[
    _HomeSpotItem(
      title: '한남동 골목',
      address: '서울 용산구 대사관로5길 34',
      difficulty: DifficultyLevel.low,
      statusTags: <String>['상태1', '상태2', '상태3'],
    ),
    _HomeSpotItem(
      title: '한남동 골목',
      address: '서울 용산구 대사관로5길 34',
      difficulty: DifficultyLevel.medium,
      statusTags: <String>['상태1', '상태2', '상태3'],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.vertical(top: Radius.circular(24)),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: AppSemanticColors.backgroundPage.withValues(alpha: 0.92),
            borderRadius: const BorderRadius.vertical(top: Radius.circular(24)),
          ),
          child: SafeArea(
            top: false,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 12, 16, 16),
              child: Column(
                children: <Widget>[
                  _SheetHandle(onTap: onHandleTap),
                  Expanded(
                    child: ListView.separated(
                      controller: scrollController,
                      physics: const ClampingScrollPhysics(),
                      itemCount: _sampleSpots.length,
                      separatorBuilder: (BuildContext context, int index) =>
                          const SizedBox(height: 12),
                      itemBuilder: (BuildContext context, int index) {
                        final _HomeSpotItem spot = _sampleSpots[index];
                        return HomeSpotCardWidget(
                          title: spot.title,
                          address: spot.address,
                          difficulty: spot.difficulty,
                          statusTags: spot.statusTags,
                          onTap: () {
                            // TODO: 실제 spot id를 path/query/extra로 전달해 상세 API 조회에 사용.
                            context.push(SGRoute.spotDetail.route);
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _SheetHandle extends StatelessWidget {
  const _SheetHandle({required this.onTap});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: SizedBox(
        width: 32,
        height: 12,
        child: Center(
          child: Container(
            width: 32,
            height: 3,
            decoration: BoxDecoration(
              color: FigmaColors.gray200,
              borderRadius: BorderRadius.circular(1.5),
            ),
          ),
        ),
      ),
    );
  }
}

class _HomeSpotItem {
  const _HomeSpotItem({
    required this.title,
    required this.address,
    required this.difficulty,
    required this.statusTags,
  });

  final String title;
  final String address;
  final DifficultyLevel difficulty;
  final List<String> statusTags;
}
