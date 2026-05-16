import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:video_thumbnail/video_thumbnail.dart';

import '../../../../common/status_action_button.dart';
import '../../../../config/theme/app_text_styles.dart';
import '../../../../config/theme/figma_colors.dart';
import '../viewmodel/spot_detail_video_ui_model.dart';

class SpotDetailVideoSection extends StatelessWidget {
  const SpotDetailVideoSection({
    super.key,
    required this.videos,
    required this.isLoading,
    this.onVideoTap,
    this.onUploadPressed,
  });

  final List<SpotDetailVideoUiModel> videos;
  final bool isLoading;
  final void Function(int index)? onVideoTap;
  final VoidCallback? onUploadPressed;

  @override
  Widget build(BuildContext context) {
    return _SectionFrame(
      title: '등록된 영상',
      onUploadPressed: onUploadPressed,
      child: _buildContent(),
    );
  }

  Widget _buildContent() {
    if (isLoading) {
      return const SizedBox(
        height: 160,
        child: Center(
          child: CircularProgressIndicator(color: FigmaColors.primary200),
        ),
      );
    }

    if (videos.isEmpty) {
      return SizedBox(
        height: 120,
        width: double.infinity,
        child: Center(
          child: Text(
            '등록된 영상이 없어요.',
            style: AppTextStyles.bodyMedium.copyWith(
              color: FigmaColors.gray100,
              height: 1.5,
            ),
          ),
        ),
      );
    }

    return SizedBox(
      height: 160,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: videos.length,
        separatorBuilder: (_, __) => const SizedBox(width: 8),
        itemBuilder: (BuildContext context, int index) {
          final SpotDetailVideoUiModel video = videos[index];
          return SpotDetailVideoPreviewCard(
            key: ValueKey<int>(video.videoId),
            title: video.title,
            videoUrl: video.videoUrl,
            onTap: onVideoTap == null ? null : () => onVideoTap!(index),
          );
        },
      ),
    );
  }
}

class SpotDetailVideoPreviewCard extends StatefulWidget {
  const SpotDetailVideoPreviewCard({
    super.key,
    required this.title,
    required this.videoUrl,
    this.onTap,
  });

  final String title;
  final String videoUrl;
  final VoidCallback? onTap;

  @override
  State<SpotDetailVideoPreviewCard> createState() =>
      _SpotDetailVideoPreviewCardState();
}

class _SpotDetailVideoPreviewCardState
    extends State<SpotDetailVideoPreviewCard> {
  Uint8List? _thumbnail;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadThumbnail();
  }

  @override
  void didUpdateWidget(covariant SpotDetailVideoPreviewCard oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.videoUrl != widget.videoUrl) {
      setState(() {
        _thumbnail = null;
        _isLoading = true;
      });
      _loadThumbnail();
    }
  }

  Future<void> _loadThumbnail() async {
    try {
      final Uint8List? bytes = await VideoThumbnail.thumbnailData(
        video: widget.videoUrl,
        imageFormat: ImageFormat.JPEG,
        maxHeight: 240,
        quality: 75,
      );
      if (mounted) {
        setState(() {
          _thumbnail = bytes;
          _isLoading = false;
        });
      }
    } catch (_) {
      if (mounted) {
        setState(() => _isLoading = false);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          GestureDetector(
            onTap: widget.onTap,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: SizedBox(
                width: 120,
                height: 120,
                child: Stack(
                  fit: StackFit.expand,
                  children: <Widget>[
                    if (_thumbnail != null)
                      Image.memory(
                        _thumbnail!,
                        fit: BoxFit.cover,
                        errorBuilder: (_, __, ___) =>
                            const ColoredBox(color: FigmaColors.gray500),
                      )
                    else
                      const ColoredBox(color: FigmaColors.gray500),
                    if (_isLoading)
                      const Center(
                        child: SizedBox(
                          width: 24,
                          height: 24,
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                            color: FigmaColors.primary200,
                          ),
                        ),
                      )
                    else
                      const Center(
                        child: Icon(
                          Icons.play_circle_outline,
                          color: FigmaColors.primary100,
                          size: 40,
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 6),
          Text(
            widget.title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: AppTextStyles.labelSmall.copyWith(
              color: FigmaColors.gray100,
              height: 1.42,
            ),
          ),
        ],
      ),
    );
  }
}

class _SectionFrame extends StatelessWidget {
  const _SectionFrame({
    required this.title,
    required this.child,
    this.onUploadPressed,
  });

  final String title;
  final Widget child;
  final VoidCallback? onUploadPressed;

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
                  title,
                  style: AppTextStyles.bodyMedium.copyWith(
                    color: FigmaColors.gray100,
                    height: 1.5,
                  ),
                ),
              ),
              if (onUploadPressed != null)
                StatusActionButton(
                  text: '영상 업로드',
                  onPressed: onUploadPressed,
                ),
            ],
          ),
          const SizedBox(height: 8),
          child,
        ],
      ),
    );
  }
}
