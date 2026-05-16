import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../common/app_navigation_bar.dart';
import '../../../../common/difficulty_tag.dart';
import '../../../../common/tag.dart';
import '../../../../config/theme/figma_colors.dart';
import '../../../../router/app_router.dart';

class DownloadSpotPage extends StatelessWidget {
  const DownloadSpotPage({super.key});

  static const List<_DownloadedSpotItem> _items = <_DownloadedSpotItem>[
    _DownloadedSpotItem(
      title: '한남동 골목',
      address: '서울 용산구 대사관로5길 34',
      difficulty: DifficultyLevel.low,
      imageUrl:
          'https://www.figma.com/api/mcp/asset/4967211c-97ac-4785-ad97-39bdb2bacc01',
      statusTags: <String>['상태1', '상태2', '상태3'],
    ),
    _DownloadedSpotItem(
      title: '한남동 골목',
      address: '서울 용산구 대사관로5길 34',
      difficulty: DifficultyLevel.medium,
      imageUrl:
          'https://www.figma.com/api/mcp/asset/4c830488-de3a-44b7-8881-a640eb8cc58d',
      statusTags: <String>['상태1', '상태2', '상태3'],
    ),
    _DownloadedSpotItem(
      title: '한남동 골목',
      address: '서울 용산구 대사관로5길 34',
      difficulty: DifficultyLevel.high,
      imageUrl:
          'https://www.figma.com/api/mcp/asset/4c830488-de3a-44b7-8881-a640eb8cc58d',
      statusTags: <String>['상태1', '상태2', '상태3'],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FigmaColors.black,
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 65, 16, 132),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    '파쿠르왕님이 저장한 스팟',
                    style: TextStyle(
                      color: FigmaColors.white,
                      fontSize: 20,
                      fontFamily: 'SUIT',
                      fontWeight: FontWeight.w700,
                      height: 1.42,
                      letterSpacing: -0.4,
                    ),
                  ),
                  const SizedBox(height: 25),
                  Text(
                    '${_items.length}개',
                    style: const TextStyle(
                      color: FigmaColors.gray100,
                      fontSize: 12,
                      fontFamily: 'SUIT',
                      fontWeight: FontWeight.w400,
                      height: 1.42,
                      letterSpacing: -0.12,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Expanded(
                    child: ListView.separated(
                      padding: EdgeInsets.zero,
                      itemCount: _items.length,
                      separatorBuilder: (BuildContext context, int index) {
                        return const SizedBox(height: 12);
                      },
                      itemBuilder: (BuildContext context, int index) {
                        return _DownloadedSpotCard(
                          item: _items[index],
                          onTap: () {
                            // TODO: 실제 저장 스팟 id를 extra/path로 전달해 상세 API 조회에 사용.
                            context.push(SGRoute.spotDetail.route);
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: AppNavigationBar(
                selectedItem: AppNavigationBarItem.saved,
                onSpotPressed: () {
                  context.go(SGRoute.home.route);
                },
                onAddPressed: () {
                  // TODO: 새 스팟 추가/등록 화면 연결.
                },
                onSavedPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _DownloadedSpotCard extends StatelessWidget {
  const _DownloadedSpotCard({
    required this.item,
    required this.onTap,
  });

  final _DownloadedSpotItem item;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: FigmaColors.gray600,
      borderRadius: BorderRadius.circular(16),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(14),
          child: Row(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  // TODO: 저장 스팟 목록 API의 썸네일 URL로 교체.
                  item.imageUrl,
                  width: 72,
                  height: 72,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(child: _DownloadedSpotCardInfo(item: item)),
              const Icon(
                Icons.chevron_right,
                size: 16,
                color: FigmaColors.gray100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _DownloadedSpotCardInfo extends StatelessWidget {
  const _DownloadedSpotCardInfo({required this.item});

  final _DownloadedSpotItem item;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 72,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Flexible(
                child: Text(
                  item.title,
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
              ),
              const SizedBox(width: 6),
              DifficultyTag(level: item.difficulty),
            ],
          ),
          const SizedBox(height: 2),
          Text(
            item.address,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: FigmaColors.gray100,
              fontSize: 10,
              fontFamily: 'SUIT',
              fontWeight: FontWeight.w400,
              height: 1.42,
              letterSpacing: -0.1,
            ),
          ),
          const Spacer(),
          Row(
            children: item.statusTags
                .map(
                  (String tag) => Padding(
                    padding: const EdgeInsets.only(right: 4),
                    child: Tag(
                      text: tag,
                      backgroundColor: FigmaColors.gray400,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 4,
                        vertical: 2,
                      ),
                      borderRadius: 2,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}

class _DownloadedSpotItem {
  const _DownloadedSpotItem({
    required this.title,
    required this.address,
    required this.difficulty,
    required this.imageUrl,
    required this.statusTags,
  });

  final String title;
  final String address;
  final DifficultyLevel difficulty;
  final String imageUrl;
  final List<String> statusTags;
}
