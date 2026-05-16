import 'dart:async';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../common/difficulty_tag.dart';
import '../../../../common/tag.dart';
import '../../../../config/theme/app_semantic_colors.dart';
import '../../../../config/theme/app_text_styles.dart';
import '../../../../config/theme/figma_colors.dart';
import '../../../file/data/providers/file_providers.dart';

class HomeSpotCardWidget extends StatelessWidget {
  const HomeSpotCardWidget({
    super.key,
    required this.title,
    required this.address,
    required this.difficulty,
    required this.statusTags,
    this.captionImgUrl,
    this.onTap,
  });

  final String title;
  final String address;
  final DifficultyLevel difficulty;
  final List<String> statusTags;
  final String? captionImgUrl;
  final VoidCallback? onTap;

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _SpotCardImage(imageUrl: captionImgUrl),
              const SizedBox(width: 16),
              Expanded(
                child: _SpotInfoColumn(
                  title: title,
                  address: address,
                  difficulty: difficulty,
                  statusTags: statusTags,
                ),
              ),
              const Icon(
                Icons.chevron_right,
                size: 16,
                color: AppSemanticColors.iconSecondary,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SpotCardImage extends ConsumerStatefulWidget {
  const _SpotCardImage({this.imageUrl});

  final String? imageUrl;

  @override
  ConsumerState<_SpotCardImage> createState() => _SpotCardImageState();
}

class _SpotCardImageState extends ConsumerState<_SpotCardImage> {
  Uint8List? _imageBytes;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    unawaited(_resolveImageUrl());
  }

  @override
  void didUpdateWidget(covariant _SpotCardImage oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.imageUrl != widget.imageUrl) {
      unawaited(_resolveImageUrl());
    }
  }

  Future<void> _resolveImageUrl() async {
    final String trimmed = widget.imageUrl?.trim() ?? '';
    if (trimmed.isEmpty) {
      if (!mounted) {
        return;
      }
      setState(() {
        _imageBytes = null;
        _isLoading = false;
      });
      return;
    }

    setState(() {
      _isLoading = true;
      _imageBytes = null;
    });

    try {
      final Uint8List bytes =
          await ref.read(getFileUseCaseProvider).call(trimmed);
      if (!mounted) {
        return;
      }

      setState(() {
        _imageBytes = bytes.isEmpty ? null : bytes;
        _isLoading = false;
      });
    } catch (_) {
      if (!mounted) {
        return;
      }
      setState(() {
        _imageBytes = null;
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: SizedBox(
        width: 72,
        height: 72,
        child: ColoredBox(
          color: FigmaColors.gray400,
          child: _buildContent(),
        ),
      ),
    );
  }

  Widget _buildContent() {
    if (_isLoading) {
      return const Center(
        child: SizedBox(
          width: 20,
          height: 20,
          child: CircularProgressIndicator(
            strokeWidth: 2,
            color: FigmaColors.primary200,
          ),
        ),
      );
    }

    final Uint8List? bytes = _imageBytes;
    if (bytes != null && bytes.isNotEmpty) {
      return Image.memory(
        bytes,
        width: 72,
        height: 72,
        fit: BoxFit.cover,
        errorBuilder: (
          BuildContext context,
          Object error,
          StackTrace? stackTrace,
        ) {
          return const SizedBox.shrink();
        },
      );
    }

    return const SizedBox.shrink();
  }
}

class _SpotInfoColumn extends StatelessWidget {
  const _SpotInfoColumn({
    required this.title,
    required this.address,
    required this.difficulty,
    required this.statusTags,
  });

  final String title;
  final String address;
  final DifficultyLevel difficulty;
  final List<String> statusTags;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          children: <Widget>[
            Flexible(
              child: Text(
                title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: AppTextStyles.labelLarge.copyWith(
                  color: AppSemanticColors.textPrimary,
                  letterSpacing: -0.16,
                ),
              ),
            ),
            const SizedBox(width: 6),
            DifficultyTag(level: difficulty),
          ],
        ),
        const SizedBox(height: 2),
        Text(
          address,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: AppTextStyles.labelSmall.copyWith(
            color: AppSemanticColors.textSecondary,
            height: 1.42,
            letterSpacing: -0.1,
          ),
        ),
        const SizedBox(height: 10),
        Wrap(
          spacing: 4,
          runSpacing: 4,
          children: statusTags
              .map(
                (String tag) => Tag(
                  text: tag,
                  backgroundColor: FigmaColors.gray400,
                  textColor: AppSemanticColors.textPrimary,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 4,
                    vertical: 2,
                  ),
                  borderRadius: 2,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}
