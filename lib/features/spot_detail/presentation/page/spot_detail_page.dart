import 'dart:async';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../common/app_top_bar.dart';
import '../../../../common/difficulty_tag.dart';
import '../../../../common/obstacle_option_card.dart';
import '../../../../common/spot_difficulty_mapper.dart';
import '../../../../common/spot_key_label_mapper.dart';
import '../../../../common/spot_video_detail_args.dart';
import '../../../../common/status_action_button.dart';
import '../../../../common/tag.dart';
import '../../../../config/theme/app_semantic_colors.dart';
import '../../../../config/theme/app_text_styles.dart';
import '../../../../config/theme/figma_colors.dart';
import '../../../../router/app_router.dart';
import '../../../../router/route_navigation.dart';
import '../../../../router/router_location_provider.dart';
import '../../../spot/domain/entity/spot.dart';
import '../../../spot/domain/entity/spot_status_list.dart';
import '../viewmodel/spot_detail_ui_model.dart';
import '../viewmodel/spot_detail_video_ui_model.dart';
import '../viewmodel/spot_detail_view_model.dart';
import '../widget/spot_detail_video_section.dart';

class SpotDetailPage extends ConsumerStatefulWidget {
  const SpotDetailPage({
    super.key,
    required this.spotId,
    this.hideSaveButton = false,
  });

  final int spotId;
  final bool hideSaveButton;

  @override
  ConsumerState<SpotDetailPage> createState() => _SpotDetailPageState();
}

class _SpotDetailPageState extends ConsumerState<SpotDetailPage> {
  String get _route => '${SGRoute.spotDetail.route}/${widget.spotId}';

  bool _isChildRoute(String route) {
    return route == SGRoute.spotVideoDetail.route ||
        route.startsWith('${SGRoute.uploadVideo.route}/') ||
        route.startsWith('${SGRoute.spotDetailStatus.route}/') ||
        route.startsWith('${SGRoute.spotDetailReview.route}/');
  }

  void _loadSpot({bool refresh = false}) {
    if (widget.spotId <= 0) {
      return;
    }

    unawaited(
      ref
          .read(spotDetailViewModelProvider.notifier)
          .loadSpot(widget.spotId, refresh: refresh),
    );
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _loadSpot();
    });
  }

  @override
  void didUpdateWidget(covariant SpotDetailPage oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.spotId != widget.spotId) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _loadSpot();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    ref.listen<String>(routerLocationProvider, (String? previous, String next) {
      if (didNavigateToRoute(
        previous: previous,
        next: next,
        route: _route,
      )) {
        final bool fromChildRoute = previous != null && _isChildRoute(previous);
        if (!fromChildRoute) {
          _loadSpot(refresh: true);
        }
      }
    });

    final SpotDetailUiModel ui = ref.watch(spotDetailViewModelProvider);

    if (widget.spotId <= 0) {
      return _SpotDetailScaffold(
        body: const _SpotDetailMessage(message: '잘못된 스팟 정보입니다.'),
        onBackPressed: () => _popOrStay(context),
      );
    }

    final Widget body = _buildBody(context, ui);

    return _SpotDetailScaffold(
      onBackPressed: () => _popOrStay(context),
      body: Stack(
        children: <Widget>[
          body,
          if (ui.isLoading) const _SpotDetailLoadingOverlay(),
        ],
      ),
    );
  }

  Widget _buildBody(BuildContext context, SpotDetailUiModel ui) {
    if (!ui.isLoading && ui.errorMessage != null && ui.spot == null) {
      return _SpotDetailMessage(message: ui.errorMessage!);
    }

    final Spot? spot = ui.spot;
    if (spot == null) {
      if (ui.isLoading) {
        return const SizedBox.expand();
      }

      return const _SpotDetailMessage(message: '스팟 정보를 찾을 수 없습니다.');
    }

    final List<String> obstacleKeys =
        spot.features.where(SpotKeyLabelMapper.isObstacleKey).toList();
    final List<String> environmentKeys =
        spot.features.where(SpotKeyLabelMapper.isEnvironmentKey).toList();
    final List<SpotStatusList> sortedStatusList = List<SpotStatusList>.from(
      spot.statusList,
    )..sort(
        (SpotStatusList a, SpotStatusList b) =>
            b.spotStatusListId.compareTo(a.spotStatusListId),
      );

    return Column(
      children: <Widget>[
        Expanded(
          child: CustomScrollView(
            slivers: <Widget>[
              SliverToBoxAdapter(
                child: _SpotHero(
                  imageBytes: ui.captionImageBytes,
                  onBackPressed: () => _popOrStay(context),
                ),
              ),
              SliverToBoxAdapter(
                child: _DetailPanel(
                  spot: spot,
                  obstacleKeys: obstacleKeys,
                  environmentKeys: environmentKeys,
                  statusList: sortedStatusList,
                  videos: ui.videos,
                  isVideosLoading: ui.isVideosLoading,
                  onVideoTap: (int index) => _openSpotVideoDetail(
                    context,
                    spotName: spot.name,
                    videos: ui.videos,
                    initialIndex: index,
                  ),
                  onStatusRegistered: () => _loadSpot(refresh: true),
                  onUploadVideoPressed: () => _openUploadVideo(context),
                ),
              ),
            ],
          ),
        ),
        if (!widget.hideSaveButton)
          _BottomSaveArea(
            isLoading: ui.isSavingSpot,
            onPressed:
                ui.isSavingSpot ? null : () => unawaited(_saveSpot(context)),
          ),
      ],
    );
  }

  Future<void> _saveSpot(BuildContext context) async {
    final String? errorMessage = await ref
        .read(spotDetailViewModelProvider.notifier)
        .saveSpot(widget.spotId);

    if (!context.mounted) {
      return;
    }

    if (errorMessage != null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(errorMessage)),
      );
      return;
    }

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('내 스팟에 저장했습니다.')),
    );
  }

  void _popOrStay(BuildContext context) {
    final GoRouter router = GoRouter.of(context);
    if (router.canPop()) {
      router.pop();
    }
  }

  void _openUploadVideo(BuildContext context) {
    unawaited(
      context
          .push<bool>('${SGRoute.uploadVideo.route}/${widget.spotId}')
          .then((bool? didUpload) {
        if (didUpload ?? false) {
          unawaited(
            ref
                .read(spotDetailViewModelProvider.notifier)
                .reloadVideos(widget.spotId),
          );
        }
      }),
    );
  }

  void _openSpotVideoDetail(
    BuildContext context, {
    required String spotName,
    required List<SpotDetailVideoUiModel> videos,
    required int initialIndex,
  }) {
    if (videos.isEmpty) {
      return;
    }

    context.push(
      SGRoute.spotVideoDetail.route,
      extra: SpotVideoDetailArgs(
        spotName: spotName,
        initialIndex: initialIndex,
        videos: videos
            .map(
              (SpotDetailVideoUiModel video) => SpotVideoDetailItem(
                videoId: video.videoId,
                title: video.title,
                videoUrl: video.videoUrl,
              ),
            )
            .toList(),
      ),
    );
  }
}

class _SpotDetailScaffold extends StatelessWidget {
  const _SpotDetailScaffold({
    required this.body,
    required this.onBackPressed,
  });

  final Widget body;
  final VoidCallback onBackPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FigmaColors.black,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Align(
                alignment: Alignment.centerLeft,
                child: AppTopBar(
                  title: '스팟 상세',
                  onBackPressed: onBackPressed,
                ),
              ),
            ),
            Expanded(child: body),
          ],
        ),
      ),
    );
  }
}

class _SpotDetailLoadingOverlay extends StatelessWidget {
  const _SpotDetailLoadingOverlay();

  @override
  Widget build(BuildContext context) {
    return const Positioned.fill(
      child: ColoredBox(
        color: FigmaColors.black,
        child: Center(
          child: CircularProgressIndicator(
            color: FigmaColors.primary200,
          ),
        ),
      ),
    );
  }
}

class _SpotDetailMessage extends StatelessWidget {
  const _SpotDetailMessage({required this.message});

  final String message;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Text(
          message,
          textAlign: TextAlign.center,
          style: AppTextStyles.bodyMedium.copyWith(
            color: AppSemanticColors.textSecondary,
          ),
        ),
      ),
    );
  }
}

class _SpotHero extends StatelessWidget {
  const _SpotHero({
    required this.imageBytes,
    required this.onBackPressed,
  });

  final Uint8List? imageBytes;
  final VoidCallback onBackPressed;

  @override
  Widget build(BuildContext context) {
    final Uint8List? bytes = imageBytes;

    return SizedBox(
      height: 364,
      child: Stack(
        children: <Widget>[
          Positioned.fill(
            child: bytes != null && bytes.isNotEmpty
                ? Image.memory(
                    bytes,
                    fit: BoxFit.cover,
                    errorBuilder: (
                      BuildContext context,
                      Object error,
                      StackTrace? stackTrace,
                    ) {
                      return const ColoredBox(color: FigmaColors.gray500);
                    },
                  )
                : const ColoredBox(color: FigmaColors.gray500),
          ),
        ],
      ),
    );
  }
}

class _DetailPanel extends StatelessWidget {
  const _DetailPanel({
    required this.spot,
    required this.obstacleKeys,
    required this.environmentKeys,
    required this.statusList,
    required this.videos,
    required this.isVideosLoading,
    required this.onVideoTap,
    required this.onStatusRegistered,
    required this.onUploadVideoPressed,
  });

  final Spot spot;
  final List<String> obstacleKeys;
  final List<String> environmentKeys;
  final List<SpotStatusList> statusList;
  final List<SpotDetailVideoUiModel> videos;
  final bool isVideosLoading;
  final void Function(int index) onVideoTap;
  final VoidCallback onStatusRegistered;
  final VoidCallback onUploadVideoPressed;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        color: FigmaColors.black,
        borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 31, 16, 0),
            child: _SpotTitleSection(spot: spot),
          ),
          const SizedBox(height: 40),
          _ObstacleSection(obstacleKeys: obstacleKeys),
          const SizedBox(height: 40),
          _EnvironmentSection(environmentKeys: environmentKeys),
          const SizedBox(height: 40),
          _RecentStatusSection(
            spotId: spot.spotId,
            statusList: statusList,
            onStatusRegistered: onStatusRegistered,
          ),
          const SizedBox(height: 40),
          SpotDetailVideoSection(
            videos: videos,
            isLoading: isVideosLoading,
            onVideoTap: onVideoTap,
            onUploadPressed: onUploadVideoPressed,
          ),
        ],
      ),
    );
  }
}

class _SpotTitleSection extends StatelessWidget {
  const _SpotTitleSection({required this.spot});

  final Spot spot;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Flexible(
                child: Text(
                  spot.name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyles.headlineLarge.copyWith(
                    color: FigmaColors.white,
                    height: 1.42,
                    letterSpacing: -0.4,
                  ),
                ),
              ),
              const SizedBox(width: 6),
              DifficultyTag(
                level: SpotDifficultyMapper.toLevel(spot.difficulty),
              ),
            ],
          ),
          const SizedBox(height: 2),
          Text(
            spot.fullAddress,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: AppTextStyles.labelSmall.copyWith(
              color: FigmaColors.gray100,
              height: 1.42,
              letterSpacing: -0.12,
            ),
          ),
        ],
      ),
    );
  }
}

class _ObstacleSection extends StatelessWidget {
  const _ObstacleSection({required this.obstacleKeys});

  final List<String> obstacleKeys;

  @override
  Widget build(BuildContext context) {
    if (obstacleKeys.isEmpty) {
      return const SizedBox.shrink();
    }

    return _SectionFrame(
      title: '장애물 유형',
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: obstacleKeys.map(
            (String key) {
              final String? svgIcon = SpotKeyLabelMapper.obstacleSvgIcon(key);
              return Padding(
                padding: const EdgeInsets.only(right: 8),
                child: ObstacleOptionCard.selected(
                  text: SpotKeyLabelMapper.featureLabel(key),
                  svgIcon: svgIcon,
                  onPressed: () {},
                ),
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}

class _EnvironmentSection extends StatelessWidget {
  const _EnvironmentSection({required this.environmentKeys});

  final List<String> environmentKeys;

  @override
  Widget build(BuildContext context) {
    if (environmentKeys.isEmpty) {
      return const SizedBox.shrink();
    }

    return _SectionFrame(
      title: '공간 유형',
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: environmentKeys
              .map(
                (String key) => Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: Tag(
                    text: SpotKeyLabelMapper.featureLabel(key),
                    backgroundColor: FigmaColors.gray400,
                    borderRadius: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}

class _RecentStatusSection extends StatelessWidget {
  const _RecentStatusSection({
    required this.spotId,
    required this.statusList,
    required this.onStatusRegistered,
  });

  final int spotId;
  final List<SpotStatusList> statusList;
  final VoidCallback onStatusRegistered;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: Text(
                  '최근 스팟 상태',
                  style: AppTextStyles.bodyMedium.copyWith(
                    color: FigmaColors.gray100,
                    height: 1.5,
                  ),
                ),
              ),
              StatusActionButton(
                text: '상태 남기기',
                onPressed: () {
                  unawaited(_showSpotDetailModal(context));
                },
              ),
            ],
          ),
          const SizedBox(height: 12),
          if (statusList.isNotEmpty)
            Column(
              children: statusList
                  .map(
                    (SpotStatusList status) => Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: _StatusCard(
                        statusLabels:
                            SpotKeyLabelMapper.mapStatusLabels(status.statuses),
                        description: status.description,
                      ),
                    ),
                  )
                  .toList(),
            )
          else
            Text(
              '등록된 스팟 상태가 없어요.',
              style: AppTextStyles.bodyMedium.copyWith(
                color: FigmaColors.gray100,
                height: 1.5,
              ),
            ),
        ],
      ),
    );
  }

  Future<void> _showSpotDetailModal(BuildContext context) async {
    final bool? didRegister = await context.push<bool>(
      '${SGRoute.spotDetailStatus.route}/$spotId',
    );

    if ((didRegister ?? false) && context.mounted) {
      onStatusRegistered();
    }
  }
}

class _StatusCard extends StatelessWidget {
  const _StatusCard({
    required this.statusLabels,
    required this.description,
  });

  final List<String> statusLabels;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: FigmaColors.gray600,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          if (statusLabels.isNotEmpty)
            Wrap(
              spacing: 4,
              runSpacing: 4,
              children: statusLabels
                  .map(
                    (String tag) => Tag(
                      text: tag,
                      backgroundColor: FigmaColors.gray400,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 4,
                        vertical: 2,
                      ),
                      borderRadius: 2,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                  .toList(),
            ),
          if (description.isNotEmpty) ...<Widget>[
            if (statusLabels.isNotEmpty) const SizedBox(height: 10),
            Text(
              description,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: AppTextStyles.bodyLarge.copyWith(
                color: FigmaColors.white,
                fontWeight: FontWeight.w700,
                height: 1.42,
                letterSpacing: -0.16,
              ),
            ),
          ],
        ],
      ),
    );
  }
}

class _BottomSaveArea extends StatelessWidget {
  const _BottomSaveArea({
    required this.onPressed,
    this.isLoading = false,
  });

  final VoidCallback? onPressed;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    final bool isEnabled = onPressed != null && !isLoading;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        color: FigmaColors.black,
        border: Border(
          top: BorderSide(color: FigmaColors.gray400),
        ),
      ),
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: isEnabled ? onPressed : null,
        child: Container(
          width: double.infinity,
          height: 60,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: isEnabled ? FigmaColors.primary100 : FigmaColors.gray500,
            borderRadius: BorderRadius.circular(16),
          ),
          child: isLoading
              ? const SizedBox(
                  width: 24,
                  height: 24,
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                    color: FigmaColors.black,
                  ),
                )
              : Text(
                  '내 스팟으로 저장',
                  style: AppTextStyles.buttonMedium.copyWith(
                    color: FigmaColors.black,
                    height: 1.42,
                    letterSpacing: -0.4,
                  ),
                ),
        ),
      ),
    );
  }
}

class _SectionFrame extends StatelessWidget {
  const _SectionFrame({
    required this.title,
    required this.child,
  });

  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: AppTextStyles.bodyMedium.copyWith(
              color: FigmaColors.gray100,
              height: 1.5,
            ),
          ),
          const SizedBox(height: 8),
          child,
        ],
      ),
    );
  }
}
