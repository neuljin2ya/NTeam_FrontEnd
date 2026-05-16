import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../common/app_top_bar.dart';
import '../../../../common/difficulty_tag.dart';
import '../../../../common/obstacle_option_card.dart';
import '../../../../common/status_action_button.dart';
import '../../../../common/tag.dart';
import '../../../../config/theme/figma_colors.dart';
import '../widget/spot_detail_modal.dart';
import 'dart:async';

class SpotDetailPage extends StatelessWidget {
  const SpotDetailPage({super.key});

  static const List<_ObstacleItem> _obstacles = <_ObstacleItem>[
    _ObstacleItem(label: '계단', svgIcon: 'assets/icons/btn_icon_stair.svg'),
    _ObstacleItem(label: '높은 벽', svgIcon: 'assets/icons/btn_icon_high.svg'),
    _ObstacleItem(label: '기둥·줄', svgIcon: 'assets/icons/btn_icon_pole.svg'),
  ];

  static const List<String> _environmentTags = <String>[
    '넓은 바닥',
    '공간 협소',
    '실내',
  ];

  static const List<_SpotStatusItem> _statuses = <_SpotStatusItem>[
    _SpotStatusItem(
      tags: <String>['상태1', '상태2', '상태3'],
      review: '스팟 한 줄 후기',
    ),
    _SpotStatusItem(
      tags: <String>['상태1', '상태2', '상태3'],
      review: '스팟 한 줄 후기',
    ),
    _SpotStatusItem(
      tags: <String>['상태1', '상태2', '상태3'],
      review: '스팟 한 줄 후기',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FigmaColors.black,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: <Widget>[
            Expanded(
              child: CustomScrollView(
                slivers: <Widget>[
                  SliverToBoxAdapter(
                    child: _SpotHero(
                      onBackPressed: () {
                        // TODO: 라우팅 정책 확정 후 이전 화면으로 이동 연결.
                        final GoRouter router = GoRouter.of(context);
                        if (router.canPop()) {
                          router.pop();
                        }
                      },
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: _DetailPanel(),
                  ),
                ],
              ),
            ),
            _BottomSaveArea(
              onPressed: () {
                // TODO: 내 스팟 저장 API 연결.
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _SpotHero extends StatelessWidget {
  const _SpotHero({required this.onBackPressed});

  final VoidCallback onBackPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 364,
      child: Stack(
        children: <Widget>[
          Positioned.fill(
            top: 58,
            child: Image.network(
              // TODO: 스팟 상세 이미지 API 응답 URL로 교체.
              'https://placehold.co/360x258',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            left: 0,
            top: 0,
            right: 0,
            child: AppTopBar(
              title: '스팟 상세',
              onBackPressed: onBackPressed,
            ),
          ),
        ],
      ),
    );
  }
}

class _DetailPanel extends StatelessWidget {
  const _DetailPanel();

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
          const Padding(
            padding: EdgeInsets.fromLTRB(16, 31, 16, 0),
            child: _SpotTitleSection(),
          ),
          const SizedBox(height: 40),
          const _ObstacleSection(),
          const SizedBox(height: 40),
          const _EnvironmentSection(),
          const SizedBox(height: 40),
          const _RecentStatusSection(),
          _VideoSection(
            onVideoTap: () {
              // TODO: 영상 상세 화면 연결.
            },
            onAddTap: () {
              // TODO: 영상 업로드/추가 화면 연결.
            },
          ),
        ],
      ),
    );
  }
}

class _SpotTitleSection extends StatelessWidget {
  const _SpotTitleSection();

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 180,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Flexible(
                child: Text(
                  // TODO: 스팟 상세 API의 spotName 연결.
                  '한남동 골목',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: FigmaColors.white,
                    fontSize: 20,
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w700,
                    height: 1.42,
                    letterSpacing: -0.4,
                  ),
                ),
              ),
              SizedBox(width: 6),
              // TODO: 스팟 상세 API의 difficulty 값으로 level 매핑.
              DifficultyTag(level: DifficultyLevel.low),
            ],
          ),
          SizedBox(height: 2),
          Text(
            // TODO: 스팟 상세 API의 address 연결.
            '서울 용산구 대사관로5길 34',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: FigmaColors.gray100,
              fontSize: 12,
              fontFamily: 'SUIT',
              fontWeight: FontWeight.w400,
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
  const _ObstacleSection();

  @override
  Widget build(BuildContext context) {
    return _SectionFrame(
      title: '장애물 유형',
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: SpotDetailPage._obstacles
              .map(
                (_ObstacleItem item) => Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: ObstacleOptionCard.selected(
                    text: item.label,
                    svgIcon: item.svgIcon,
                    onPressed: () {
                      // TODO: 장애물 유형 필터/상세 동작 연결 필요 시 구현.
                    },
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}

class _EnvironmentSection extends StatelessWidget {
  const _EnvironmentSection();

  @override
  Widget build(BuildContext context) {
    return _SectionFrame(
      title: '공간 유형',
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: SpotDetailPage._environmentTags
              .map(
                (String tag) => Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: Tag(
                    text: tag,
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
  const _RecentStatusSection();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              const Expanded(
                child: Text(
                  '최근 스팟 상태',
                  style: TextStyle(
                    color: FigmaColors.gray100,
                    fontSize: 14,
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w400,
                    height: 1.5,
                  ),
                ),
              ),
              StatusActionButton(
                text: '상태 남기기',
                onPressed: () {
                  _showSpotDetailModal(context);
                },
              ),
            ],
          ),
          const SizedBox(height: 12),
          ...SpotDetailPage._statuses.indexed.map(
                ((int, _SpotStatusItem) entry) => Padding(
              padding: EdgeInsets.only(bottom: entry.$1 < SpotDetailPage._statuses.length - 1 ? 8 : 24),
              child: _StatusCard(item: entry.$2),
            ),
          ),
        ],
      ),
    );
  }

  void _showSpotDetailModal(BuildContext context) {
    showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return SpotDetailModal(
          onSubmit: (List<String> selectedStatusIds) {
            // TODO: 선택된 상태 id 목록을 상태 남기기 상세 입력 화면 또는 API로 전달.
          },
        );
      },
    );
  }
}

class _StatusCard extends StatelessWidget {
  const _StatusCard({required this.item});

  final _SpotStatusItem item;

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
          Row(
            mainAxisSize: MainAxisSize.min,
            children: item.tags
                .map(
                  (String tag) => Padding(
                padding: const EdgeInsets.only(right: 4),
                child: Tag(
                  text: tag,
                  backgroundColor: FigmaColors.gray400,
                  padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                  borderRadius: 2,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
            )
                .toList(),
          ),
          const SizedBox(height: 10),
          Text(
            // TODO: 최근 스팟 상태 API의 한 줄 후기 연결.
            item.review,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: FigmaColors.white,
              fontSize: 16,
              fontFamily: 'SUIT',
              fontWeight: FontWeight.w700,
              height: 1.42,
              letterSpacing: -0.16,
            ),
          ),
        ],
      ),
    );
  }
}

class _VideoSection extends StatefulWidget {
  const _VideoSection({
    required this.onVideoTap,
    required this.onAddTap,
  });

  final VoidCallback onVideoTap;
  final VoidCallback onAddTap;

  @override
  State<_VideoSection> createState() => _VideoSectionState();
}

class _VideoSectionState extends State<_VideoSection> {
  bool _showHint = false;
  Timer? _hintTimer;

  @override
  void dispose() {
    _hintTimer?.cancel();
    super.dispose();
  }
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: <Widget>[
        Container(
          width: double.infinity,
          padding: const EdgeInsets.fromLTRB(16, 24, 16, 24),
          color: FigmaColors.primary600,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const Expanded(
                    child: Text(
                      '이 스팟에서 남겨진 영상 보기',
                      style: TextStyle(
                        color: FigmaColors.white,
                        fontSize: 16,
                        fontFamily: 'SUIT',
                        fontWeight: FontWeight.w400,
                        height: 1.5,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      GestureDetector(
                        behavior: HitTestBehavior.opaque,
                        onTap: widget.onAddTap,
                        child: const Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Icon(Icons.add, color: FigmaColors.primary300, size: 20),
                            SizedBox(width: 4),
                            Text(
                              '영상 업로드하기',
                              style: TextStyle(
                                color: FigmaColors.primary300,
                                fontSize: 16,
                                fontFamily: 'SUIT',
                                fontWeight: FontWeight.w400,
                                height: 1.5,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 4),
                      GestureDetector(
                        behavior: HitTestBehavior.opaque,
                        onLongPress: () {
                          _hintTimer = Timer(const Duration(milliseconds: 250), () {
                            setState(() => _showHint = true);
                          });
                        },
                        onLongPressEnd: (_) {
                          _hintTimer?.cancel();
                          setState(() => _showHint = false);
                        },
                        child: const Icon(
                          Icons.info_outline,
                          color: FigmaColors.white,
                          size: 16,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                children: <Widget>[
                  _VideoTile(color: FigmaColors.gray200, onPressed: widget.onVideoTap),
                  const SizedBox(width: 12),
                  _VideoTile(color: FigmaColors.gray300, onPressed: widget.onVideoTap),
                ],
              ),
            ],
          ),
        ),
        if (_showHint)
          Positioned(
            top: -24,
            right: 16,
            child: Container(
              constraints: const BoxConstraints(maxWidth: 198),
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              decoration: BoxDecoration(
                color: FigmaColors.gray400,
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Text(
                '영상은 1분 내외 100mb까지만\n등록 가능해요',
                style: TextStyle(
                  color: FigmaColors.gray100,
                  fontSize: 14,
                  fontFamily: 'SUIT',
                  fontWeight: FontWeight.w400,
                  height: 1.42,
                ),
              ),
            ),
          ),
      ],
    );
  }
}

class _VideoTile extends StatelessWidget {
  const _VideoTile({
    required this.color,
    required this.onPressed,
  });

  final Color color;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onPressed,
      child: Container(
        width: 118,
        height: 164,
        decoration: BoxDecoration(
          // TODO: 영상 썸네일 API 이미지가 있으면 DecorationImage로 교체.
          color: color,
          borderRadius: BorderRadius.circular(16),
        ),
        child: const Icon(
          Icons.play_circle_outline,
          color: FigmaColors.white,
          size: 36,
        ),
      ),
    );
  }
}

class _BottomSaveArea extends StatelessWidget {
  const _BottomSaveArea({required this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
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
        onTap: onPressed,
        child: Container(
          width: double.infinity,
          height: 60,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: FigmaColors.primary100,
            borderRadius: BorderRadius.circular(16),
          ),
          child: const Text(
            '내 스팟으로 저장',
            style: TextStyle(
              color: FigmaColors.black,
              fontSize: 20,
              fontFamily: 'SUIT',
              fontWeight: FontWeight.w700,
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
            style: const TextStyle(
              color: FigmaColors.gray100,
              fontSize: 14,
              fontFamily: 'SUIT',
              fontWeight: FontWeight.w400,
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

class _ObstacleItem {
  const _ObstacleItem({
    required this.label,
    required this.svgIcon,
  });

  final String label;
  final String svgIcon;
}

class _SpotStatusItem {
  const _SpotStatusItem({
    required this.tags,
    required this.review,
  });

  final List<String> tags;
  final String review;
}
