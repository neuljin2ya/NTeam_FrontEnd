import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:video_player/video_player.dart';

import '../../../../common/app_top_bar.dart';
import '../../../../common/downloaded_file_store.dart';
import '../../../../common/tag.dart';
import '../../../../common/spot_video_detail_args.dart';
import '../../../../config/theme/app_semantic_colors.dart';
import '../../../../config/theme/app_text_styles.dart';
import '../../../../config/theme/figma_colors.dart';

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
  late int _currentIndex;

  List<SpotVideoDetailItem> get _videos => widget.args.videos;

  @override
  void initState() {
    super.initState();
    final int maxIndex = _videos.isEmpty ? 0 : _videos.length - 1;
    _currentIndex = widget.args.initialIndex.clamp(0, maxIndex);
    _pageController = PageController(initialPage: _currentIndex);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onPageChanged(int index) {
    if (_currentIndex == index) {
      return;
    }
    setState(() => _currentIndex = index);
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
                onBackPressed: () => GoRouter.of(context).pop(),
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
            onPageChanged: _onPageChanged,
            itemBuilder: (BuildContext context, int index) {
              return _SpotVideoPage(
                video: _videos[index],
                isActive: index == _currentIndex,
              );
            },
          ),
          SafeArea(
            bottom: false,
            child: AppTopBar(
              title: widget.args.spotName,
              onBackPressed: () => GoRouter.of(context).pop(),
            ),
          ),
        ],
      ),
    );
  }
}

class _SpotVideoPage extends StatefulWidget {
  const _SpotVideoPage({
    required this.video,
    required this.isActive,
  });

  final SpotVideoDetailItem video;
  final bool isActive;

  @override
  State<_SpotVideoPage> createState() => _SpotVideoPageState();
}

class _SpotVideoPageState extends State<_SpotVideoPage> {
  VideoPlayerController? _controller;
  bool _isInitializing = false;
  bool _hasError = false;
  int _initGeneration = 0;

  @override
  void initState() {
    super.initState();
    _schedulePlayerLifecycle();
  }

  @override
  void didUpdateWidget(covariant _SpotVideoPage oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.video.videoUrl != widget.video.videoUrl) {
      _disposeController();
      _schedulePlayerLifecycle();
      return;
    }
    if (oldWidget.isActive != widget.isActive) {
      _schedulePlayerLifecycle();
    }
  }

  @override
  void dispose() {
    _disposeController();
    super.dispose();
  }

  void _schedulePlayerLifecycle() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) {
        return;
      }
      unawaited(_syncPlayerLifecycle());
    });
  }

  Future<void> _syncPlayerLifecycle() async {
    if (!mounted) {
      return;
    }

    if (!widget.isActive) {
      _disposeController();
      setState(() {
        _isInitializing = false;
        _hasError = false;
      });
      return;
    }

    final VideoPlayerController? controller = _controller;
    if (controller != null && controller.value.isInitialized) {
      _syncPlayback();
      return;
    }

    await _initializePlayer();
  }

  Future<void> _initializePlayer({int retryCount = 0}) async {
    if (!mounted || !widget.isActive) {
      return;
    }

    final int generation = ++_initGeneration;

    setState(() {
      _isInitializing = true;
      _hasError = false;
    });

    VideoPlayerController? controller;

    try {
      final String playSource = await _resolvePlaySource(widget.video.videoUrl);
      if (!mounted || !widget.isActive || generation != _initGeneration) {
        return;
      }

      controller = _createController(playSource);
      await controller.initialize();
      await controller.setLooping(true);

      if (!mounted || !widget.isActive || generation != _initGeneration) {
        await controller.dispose();
        return;
      }

      controller.addListener(_onControllerUpdate);

      setState(() {
        _controller = controller;
        _isInitializing = false;
      });

      _syncPlayback();
    } catch (error, stackTrace) {
      debugPrint('Spot video init failed: $error\n$stackTrace');
      await controller?.dispose();
      if (!mounted || !widget.isActive || generation != _initGeneration) {
        return;
      }

      if (retryCount < 1 && _isRecoverableChannelError(error)) {
        await Future<void>.delayed(const Duration(milliseconds: 300));
        if (!mounted || !widget.isActive || generation != _initGeneration) {
          return;
        }
        return _initializePlayer(retryCount: retryCount + 1);
      }

      setState(() {
        _isInitializing = false;
        _hasError = true;
      });
    }
  }

  bool _isRecoverableChannelError(Object error) {
    return error is PlatformException && error.code == 'channel-error';
  }

  Future<String> _resolvePlaySource(String videoUrl) async {
    final String trimmedUrl = videoUrl.trim();
    if (trimmedUrl.startsWith('http://') || trimmedUrl.startsWith('https://')) {
      return trimmedUrl;
    }

    return DownloadedFileStore.ensurePlayableVideoPath(trimmedUrl);
  }

  VideoPlayerController _createController(String videoUrl) {
    if (videoUrl.startsWith('http://') || videoUrl.startsWith('https://')) {
      return VideoPlayerController.networkUrl(Uri.parse(videoUrl));
    }

    return VideoPlayerController.file(
      File(DownloadedFileStore.normalizeLocalPath(videoUrl)),
    );
  }

  void _onControllerUpdate() {
    if (mounted) {
      setState(() {});
    }
  }

  void _disposeController() {
    _initGeneration++;
    final VideoPlayerController? controller = _controller;
    _controller = null;
    controller
      ?..removeListener(_onControllerUpdate)
      ..dispose();
  }

  void _syncPlayback() {
    final VideoPlayerController? controller = _controller;
    if (controller == null || !controller.value.isInitialized) {
      return;
    }

    if (widget.isActive) {
      controller.play();
    } else {
      controller.pause();
    }
  }

  void _togglePlayback() {
    final VideoPlayerController? controller = _controller;
    if (controller == null || !controller.value.isInitialized) {
      return;
    }

    if (controller.value.isPlaying) {
      controller.pause();
    } else {
      controller.play();
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final VideoPlayerController? controller = _controller;

    return GestureDetector(
      onTap: _togglePlayback,
      behavior: HitTestBehavior.opaque,
      child: Stack(
        children: <Widget>[
          Positioned.fill(
            child: _buildVideoLayer(controller),
          ),
          if (_isInitializing)
            const Center(
              child: CircularProgressIndicator(color: FigmaColors.primary200),
            ),
          if (_hasError)
            Center(
              child: Text(
                '영상을 재생할 수 없습니다.',
                style: AppTextStyles.bodyMedium.copyWith(
                  color: FigmaColors.white,
                ),
              ),
            ),
          if (!_isInitializing &&
              !_hasError &&
              controller != null &&
              controller.value.isInitialized &&
              !controller.value.isPlaying)
            const Center(
              child: Icon(
                Icons.play_circle_outline,
                color: FigmaColors.primary100,
                size: 64,
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
                child: _VideoMetaContent(title: widget.video.title),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildVideoLayer(VideoPlayerController? controller) {
    if (controller == null || !controller.value.isInitialized) {
      return const ColoredBox(color: FigmaColors.gray500);
    }

    return ClipRect(
      child: FittedBox(
        fit: BoxFit.cover,
        child: SizedBox(
          width: controller.value.size.width,
          height: controller.value.size.height,
          child: VideoPlayer(controller),
        ),
      ),
    );
  }
}

class _VideoMetaContent extends StatelessWidget {
  const _VideoMetaContent({required this.title});

  static const List<String> _dummyTags = <String>[
    'Kong vault',
    'Percision',
    'Cat leap',
  ];

  static const String _dummyMemo =
      '#오늘운동 #잘먹었다';

  final String title;

  @override
  Widget build(BuildContext context) {
    if (title.trim().isEmpty) {
      return const SizedBox.shrink();
    }

    return SizedBox(
      width: 328,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: AppTextStyles.headlineLarge.copyWith(
              color: FigmaColors.white,
              fontSize: 24,
              height: 1.42,
              letterSpacing: -0.4,
            ),
          ),
          const SizedBox(height: 12),
          Wrap(
            spacing: 6,
            runSpacing: 6,
            children: <Widget>[
              for (final String tagText in _dummyTags)
                Tag(
                  text: tagText,
                  backgroundColor: FigmaColors.primary600,
                  textColor: FigmaColors.primary50,
                  borderRadius: 16,
                  fontWeight: FontWeight.w400,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 4,
                  ),
                ),
            ],
          ),
          const SizedBox(height: 12),
          Text(
            _dummyMemo,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: AppTextStyles.labelLarge.copyWith(
              color: AppSemanticColors.textSecondary,
              letterSpacing: -0.16,
            ),
          ),
        ],
      ),
    );
  }
}
