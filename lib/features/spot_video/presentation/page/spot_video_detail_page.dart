import 'dart:io';

import 'package:flutter/material.dart';
import 'package:video_thumbnail/video_thumbnail.dart';

import '../../../../common/app_top_bar.dart';
import '../../../../config/theme/app_text_styles.dart';
import '../../../../config/theme/figma_colors.dart';
import '../../../../common/spot_video_detail_args.dart';

class SpotVideoDetailPage extends StatefulWidget {
  const SpotVideoDetailPage({
    super.key,
    required this.args,
  });

  final SpotVideoDetailArgs args;

  @override
  State<SpotVideoDetailPage> createState() => _SpotVideoDetailPageState();
}

class _SpotVideoDetailPageState extends State<SpotVideoDetailPage> {
  late final PageController _pageController;
  List<SpotVideoDetailItem> get _videos => widget.args.videos;

  @override
  void initState() {
    super.initState();
    final int maxIndex = _videos.isEmpty ? 0 : _videos.length - 1;
    final int initialIndex = widget.args.initialIndex.clamp(0, maxIndex);
    _pageController = PageController(initialPage: initialIndex);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_videos.isEmpty) {
      return Scaffold(
        backgroundColor: FigmaColors.black,
        body: Stack(
          children: <Widget>[
            const Center(
              child: Text(
                '재생할 영상이 없습니다.',
                style: TextStyle(color: FigmaColors.white),
              ),
            ),
            SafeArea(
              bottom: false,
              child: AppTopBar(
                title: widget.args.spotName,
                onBackPressed: () => Navigator.of(context).maybePop(),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: FigmaColors.black,
      body: Stack(
        children: <Widget>[
          PageView.builder(
            controller: _pageController,
            scrollDirection: Axis.vertical,
            itemCount: _videos.length,
            itemBuilder: (BuildContext context, int index) {
              return _SpotVideoPage(video: _videos[index]);
            },
          ),
          SafeArea(
            bottom: false,
            child: AppTopBar(
              title: widget.args.spotName,
              onBackPressed: () => Navigator.of(context).maybePop(),
            ),
          ),
        ],
      ),
    );
  }
}

class _SpotVideoPage extends StatefulWidget {
  const _SpotVideoPage({required this.video});

  final SpotVideoDetailItem video;

  @override
  State<_SpotVideoPage> createState() => _SpotVideoPageState();
}

class _SpotVideoPageState extends State<_SpotVideoPage> {
  String? _thumbnailPath;
  bool _isThumbnailLoading = true;

  @override
  void initState() {
    super.initState();
    _loadThumbnail();
  }

  @override
  void didUpdateWidget(covariant _SpotVideoPage oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.video.videoUrl != widget.video.videoUrl) {
      _loadThumbnail();
    }
  }

  Future<void> _loadThumbnail() async {
    setState(() {
      _isThumbnailLoading = true;
      _thumbnailPath = null;
    });

    try {
      final String? thumbnailPath = await VideoThumbnail.thumbnailFile(
        video: widget.video.videoUrl,
        imageFormat: ImageFormat.JPEG,
        quality: 75,
      );

      if (!mounted) {
        return;
      }

      setState(() {
        _thumbnailPath = thumbnailPath;
        _isThumbnailLoading = false;
      });
    } catch (_) {
      if (!mounted) {
        return;
      }

      setState(() {
        _isThumbnailLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final String? thumbnailPath = _thumbnailPath;

    return Stack(
      children: <Widget>[
        Positioned.fill(
          child: thumbnailPath != null
              ? Image.file(
                  File(thumbnailPath),
                  fit: BoxFit.cover,
                )
              : const ColoredBox(color: FigmaColors.gray500),
        ),
        if (_isThumbnailLoading)
          const Center(
            child: CircularProgressIndicator(color: FigmaColors.primary200),
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
              child: _VideoMetaContent(title: widget.video.title),
            ),
          ),
        ),
      ],
    );
  }
}

class _VideoMetaContent extends StatelessWidget {
  const _VideoMetaContent({required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    if (title.trim().isEmpty) {
      return const SizedBox.shrink();
    }

    return Text(
      title,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
      style: AppTextStyles.headlineLarge.copyWith(
        color: FigmaColors.white,
        fontSize: 24,
        height: 1.42,
        letterSpacing: -0.4,
      ),
    );
  }
}
