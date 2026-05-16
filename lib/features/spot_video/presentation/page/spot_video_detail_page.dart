import 'package:flutter/material.dart';

import '../../../../common/app_top_bar.dart';
import '../../../../config/theme/figma_colors.dart';

class SpotVideoDetailPage extends StatelessWidget {
  const SpotVideoDetailPage({
    super.key,
    this.initialIndex = 0,
  });

  final int initialIndex;

  static const List<_SpotVideoItem> _dummyVideos = <_SpotVideoItem>[
    _SpotVideoItem(
      spotName: '한남동 골목',
      authorName: '파쿠르왕',
      thumbnailUrl:
          'https://www.figma.com/api/mcp/asset/d3ab41a6-5842-4033-83b9-832da461d003',
      skillTags: <String>['Kong vault', 'Percision', 'Cat leap'],
      memo: '한줄메모한줄메모한줄메모한줄메모한줄메모한줄메모한줄메모한줄메모한줄메모한줄',
    ),
    _SpotVideoItem(
      spotName: '한남동 골목',
      authorName: '두번째 영상',
      thumbnailUrl:
          'https://images.unsplash.com/photo-1521412644187-c49fa049e84d?auto=format&fit=crop&w=900&q=80',
      skillTags: <String>['Wall run', 'Landing'],
      memo: '두 번째 더미 영상입니다. 여기서 아래로 더 내려가지 않으면 마지막 영상 테스트 성공입니다.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final int safeInitialIndex = initialIndex.clamp(
      0,
      _dummyVideos.length - 1,
    );

    return Scaffold(
      backgroundColor: FigmaColors.black,
      body: Stack(
        children: <Widget>[
          PageView.builder(
            controller: PageController(initialPage: safeInitialIndex),
            scrollDirection: Axis.vertical,
            itemCount: _dummyVideos.length,
            itemBuilder: (BuildContext context, int index) {
              return _SpotVideoPage(video: _dummyVideos[index]);
            },
          ),
          SafeArea(
            bottom: false,
            child: AppTopBar(
              title: _dummyVideos[safeInitialIndex].spotName,
              onBackPressed: () {
                Navigator.of(context).maybePop();
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _SpotVideoPage extends StatelessWidget {
  const _SpotVideoPage({required this.video});

  final _SpotVideoItem video;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned.fill(
          child: Image.network(
            // TODO: 영상 상세 API의 썸네일/영상 URL로 교체.
            video.thumbnailUrl,
            fit: BoxFit.cover,
          ),
        ),
        const Positioned(
          top: 0,
          left: 0,
          right: 0,
          height: 170,
          child: DecoratedBox(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[
                  Color(0x99000000),
                  Color(0x00000000),
                ],
              ),
            ),
          ),
        ),
        const Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          height: 304,
          child: DecoratedBox(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[
                  Color(0x00000000),
                  FigmaColors.black,
                ],
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: SafeArea(
            top: false,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 48),
              child: _VideoMetaContent(video: video),
            ),
          ),
        ),
      ],
    );
  }
}

class _VideoMetaContent extends StatelessWidget {
  const _VideoMetaContent({required this.video});

  final _SpotVideoItem video;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          // TODO: 영상 상세 API의 작성자/닉네임으로 교체.
          video.authorName,
          style: const TextStyle(
            color: FigmaColors.white,
            fontSize: 24,
            fontFamily: 'SUIT',
            fontWeight: FontWeight.w700,
            height: 1.42,
            letterSpacing: -0.4,
          ),
        ),
        const SizedBox(height: 14),
        _SkillTagRow(tags: video.skillTags),
        const SizedBox(height: 14),
        Text(
          // TODO: 영상 상세 API의 한 줄 설명으로 교체.
          video.memo,
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: FigmaColors.white,
            fontSize: 18,
            fontFamily: 'SUIT',
            fontWeight: FontWeight.w700,
            height: 1.42,
            letterSpacing: -0.16,
          ),
        ),
      ],
    );
  }
}

class _SkillTagRow extends StatelessWidget {
  const _SkillTagRow({required this.tags});

  final List<String> tags;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: tags
          .map<Widget>(
            (String tag) => Padding(
              padding: const EdgeInsets.only(right: 6),
              child: _SkillChip(text: tag),
            ),
          )
          .toList(),
    );
  }
}

class _SpotVideoItem {
  const _SpotVideoItem({
    required this.spotName,
    required this.authorName,
    required this.thumbnailUrl,
    required this.skillTags,
    required this.memo,
  });

  final String spotName;
  final String authorName;
  final String thumbnailUrl;
  final List<String> skillTags;
  final String memo;
}

class _SkillChip extends StatelessWidget {
  const _SkillChip({required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: FigmaColors.primary600,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Text(
        text,
        maxLines: 1,
        style: const TextStyle(
          color: FigmaColors.primary50,
          fontSize: 16,
          fontFamily: 'SUIT',
          fontWeight: FontWeight.w400,
          height: 1.5,
        ),
      ),
    );
  }
}
