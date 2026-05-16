import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../common/app_navigation_bar.dart';
import '../../../../common/spot_difficulty_mapper.dart';
import '../../../../common/spot_key_label_mapper.dart';
import '../../../../config/theme/app_text_styles.dart';
import '../../../../config/theme/figma_colors.dart';
import '../../../../router/app_router.dart';
import '../../../../router/route_navigation.dart';
import '../../../../router/router_location_provider.dart';
import '../../../spot/domain/entity/spot.dart';
import '../viewmodel/download_spot_ui_model.dart';
import '../viewmodel/download_spot_view_model.dart';
import '../widget/saved_spot_list_card_widget.dart';

class DownloadSpotPage extends ConsumerStatefulWidget {
  const DownloadSpotPage({super.key});

  @override
  ConsumerState<DownloadSpotPage> createState() => _DownloadSpotPageState();
}

class _DownloadSpotPageState extends ConsumerState<DownloadSpotPage> {
  DownloadSpotViewModel get _viewModel =>
      ref.read(downloadSpotViewModelProvider.notifier);

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      unawaited(_viewModel.loadSavedSpots());
    });
  }

  @override
  Widget build(BuildContext context) {
    ref.listen<String>(routerLocationProvider, (String? previous, String next) {
      if (didNavigateToRoute(
        previous: previous,
        next: next,
        route: SGRoute.downloadSpot.route,
      )) {
        unawaited(
          ref.read(downloadSpotViewModelProvider.notifier).loadSavedSpots(),
        );
      }
    });

    final DownloadSpotUiModel ui = ref.watch(downloadSpotViewModelProvider);
    final double navBottomInset = AppNavigationBar.bottomInset(context);

    return Scaffold(
      backgroundColor: FigmaColors.black,
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: EdgeInsets.fromLTRB(16, 65, 16, 16 + navBottomInset),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                '저장한 스팟',
                style: AppTextStyles.headlineLarge.copyWith(
                  color: FigmaColors.white,
                  letterSpacing: -0.4,
                ),
              ),
              const SizedBox(height: 25),
              Text(
                '${ui.spots.length}개',
                style: AppTextStyles.labelSmall.copyWith(
                  color: FigmaColors.gray100,
                  fontSize: 12,
                  letterSpacing: -0.12,
                ),
              ),
              const SizedBox(height: 8),
              Expanded(child: _buildBody(context, ui)),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBody(BuildContext context, DownloadSpotUiModel ui) {
    if (ui.isLoading) {
      return const Center(
        child: CircularProgressIndicator(color: FigmaColors.primary200),
      );
    }

    if (ui.errorMessage != null) {
      return Center(
        child: Text(
          ui.errorMessage!,
          textAlign: TextAlign.center,
          style: AppTextStyles.bodyMedium.copyWith(color: FigmaColors.gray100),
        ),
      );
    }

    if (ui.spots.isEmpty) {
      return Center(
        child: Text(
          '저장한 스팟이 없습니다.',
          style: AppTextStyles.bodyMedium.copyWith(color: FigmaColors.gray100),
        ),
      );
    }

    return ListView.separated(
      padding: EdgeInsets.zero,
      itemCount: ui.spots.length,
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(height: 12);
      },
      itemBuilder: (BuildContext context, int index) {
        final Spot spot = ui.spots[index];
        final String captionImgUrl = spot.captionImgUrl.trim();
        return SavedSpotListCardWidget(
          title: spot.name,
          address: spot.fullAddress,
          captionImgUrl: captionImgUrl.isEmpty ? null : captionImgUrl,
          difficulty: SpotDifficultyMapper.toLevel(spot.difficulty),
          statusTags: SpotKeyLabelMapper.mapStatusLabels(
            spot.latestStatusList?.statuses ?? const <String>[],
          ),
          onTap: () {
            context.push(
              '${SGRoute.spotDetail.route}/${spot.spotId}?hideSaveButton=true',
            );
          },
        );
      },
    );
  }
}
