import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../common/spot_difficulty_mapper.dart';
import '../../../../common/spot_key_label_mapper.dart';
import '../../../../config/theme/app_semantic_colors.dart';
import '../../../../config/theme/app_text_styles.dart';
import '../../../../config/theme/figma_colors.dart';
import '../../../../router/app_router.dart';
import '../../../spot/domain/entity/spot.dart';
import 'home_spot_card_widget.dart';

class HomeBottomSheetWidget extends StatelessWidget {
  const HomeBottomSheetWidget({
    super.key,
    required this.scrollController,
    required this.onHandleTap,
    required this.spots,
    required this.isLoading,
    this.errorMessage,
  });

  final ScrollController scrollController;
  final VoidCallback onHandleTap;
  final List<Spot> spots;
  final bool isLoading;
  final String? errorMessage;

  static const EdgeInsets _contentPadding = EdgeInsets.fromLTRB(16, 12, 16, 16);

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
          child: CustomScrollView(
            controller: scrollController,
            primary: false,
            physics: const AlwaysScrollableScrollPhysics(
              parent: ClampingScrollPhysics(),
            ),
            slivers: <Widget>[
              SliverPadding(
                padding: _contentPadding.copyWith(bottom: 0),
                sliver: SliverToBoxAdapter(
                  child: _SheetHandle(onTap: onHandleTap),
                ),
              ),
              ..._buildContentSlivers(context),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> _buildContentSlivers(BuildContext context) {
    if (isLoading) {
      return <Widget>[
        _centeredStatusSliver(
          const CircularProgressIndicator(color: FigmaColors.primary200),
        ),
      ];
    }

    if (errorMessage != null) {
      return <Widget>[
        _centeredStatusSliver(
          Text(
            errorMessage!,
            textAlign: TextAlign.center,
            style: AppTextStyles.bodyMedium.copyWith(
              color: AppSemanticColors.textSecondary,
            ),
          ),
        ),
      ];
    }

    if (spots.isEmpty) {
      return <Widget>[
        _centeredStatusSliver(
          Text(
            '주변에 등록된 스팟이 없습니다.',
            style: AppTextStyles.bodyMedium.copyWith(
              color: AppSemanticColors.textSecondary,
            ),
          ),
        ),
      ];
    }

    return <Widget>[
      SliverPadding(
        padding: _contentPadding.copyWith(top: 0),
        sliver: SliverList.separated(
          itemCount: spots.length,
          separatorBuilder: (BuildContext context, int index) =>
              const SizedBox(height: 12),
          itemBuilder: (BuildContext context, int index) {
            final Spot spot = spots[index];
            return HomeSpotCardWidget(
              title: spot.name,
              address: spot.fullAddress,
              captionImgUrl: spot.captionImgUrl,
              difficulty: SpotDifficultyMapper.toLevel(spot.difficulty),
              statusTags: SpotKeyLabelMapper.mapStatusLabels(
                spot.latestStatusList?.statuses ?? const <String>[],
              ),
              onTap: () {
                context.push('${SGRoute.spotDetail.route}/${spot.spotId}');
              },
            );
          },
        ),
      ),
    ];
  }

  /// 시트 가시 영역 기준 세로 중앙 (네비·과도한 하단 패딩 없음).
  static Widget _centeredStatusSliver(Widget child) {
    return SliverFillRemaining(
      hasScrollBody: false,
      child: Align(
        alignment: const Alignment(0, -0.25),
        child: child,
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
        width: double.infinity,
        height: 24,
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
