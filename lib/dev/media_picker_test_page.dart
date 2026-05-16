import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:image_picker/image_picker.dart';
import 'package:video_compress/video_compress.dart';

import '../common/app_button.dart';
import '../config/theme/app_semantic_colors.dart';
import '../config/theme/app_text_styles.dart';

/// Dev: 갤러리(이미지·영상) 선택 테스트.
class MediaPickerTestPage extends StatefulWidget {
  const MediaPickerTestPage({super.key});

  @override
  State<MediaPickerTestPage> createState() => _MediaPickerTestPageState();
}

class _MediaPickerTestPageState extends State<MediaPickerTestPage> {
  static const int _maxVideoBytes = 100 * 1024 * 1024;

  /// 선택 후 1회 압축, 결과 파일은 100MB 이하.
  static const VideoQuality _videoCompressQuality = VideoQuality.Res960x540Quality;
  static const int _videoFrameRate = 24;

  final ImagePicker _picker = ImagePicker();

  XFile? _pickedImage;
  XFile? _pickedVideo;
  int? _pickedVideoBytes;
  int? _originalVideoBytes;
  bool _isCompressingVideo = false;

  @override
  void dispose() {
    unawaited(VideoCompress.deleteAllCache());
    super.dispose();
  }

  Future<void> _pickImageFromGallery() async {
    try {
      final XFile? file = await _picker.pickImage(
        source: ImageSource.gallery,
        maxWidth: 4096,
        maxHeight: 4096,
        imageQuality: 90,
      );
      if (!mounted || file == null) {
        return;
      }
      setState(() => _pickedImage = file);
    } catch (error) {
      _showMessage('이미지를 선택하지 못했습니다.\n$error');
    }
  }

  Future<void> _pickVideoFromGallery() async {
    if (_isCompressingVideo) {
      return;
    }

    try {
      final XFile? file = await _picker.pickVideo(
        source: ImageSource.gallery,
      );
      if (!mounted || file == null) {
        return;
      }

      final int originalBytes = await File(file.path).length();
      setState(() => _isCompressingVideo = true);

      final XFile? compressed = await _compressVideo(file.path);
      if (!mounted) {
        return;
      }

      setState(() => _isCompressingVideo = false);

      if (compressed == null) {
        _showMessage('영상을 압축하지 못했습니다.');
        return;
      }

      final int bytes = await File(compressed.path).length();
      if (bytes > _maxVideoBytes) {
        _showMessage(
          '압축 후에도 100MB를 초과합니다.\n'
          '원본: ${_formatBytes(originalBytes)} → 압축: ${_formatBytes(bytes)}',
        );
        return;
      }

      setState(() {
        _pickedVideo = compressed;
        _pickedVideoBytes = bytes;
        _originalVideoBytes = originalBytes;
      });
    } catch (error) {
      if (mounted) {
        setState(() => _isCompressingVideo = false);
      }
      _showMessage('영상을 선택하지 못했습니다.\n$error');
    }
  }

  Future<XFile?> _compressVideo(String sourcePath) async {
    final MediaInfo? info = await VideoCompress.compressVideo(
      sourcePath,
      quality: _videoCompressQuality,
      frameRate: _videoFrameRate,
    );

    final String? outputPath = info?.path;
    if (outputPath == null) {
      return null;
    }
    return XFile(outputPath, name: _fileName(outputPath));
  }

  void _showMessage(String message) {
    if (!mounted) {
      return;
    }
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  void _clearImage() => setState(() => _pickedImage = null);

  void _clearVideo() => setState(() {
        _pickedVideo = null;
        _pickedVideoBytes = null;
        _originalVideoBytes = null;
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('미디어 선택 테스트')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: <Widget>[
          Text(
            '이미지',
            style: AppTextStyles.titleLarge.copyWith(
              color: AppSemanticColors.textPrimary,
            ),
          ),
          const Gap(8),
          Text(
            '갤러리에서 이미지를 선택합니다.',
            style: AppTextStyles.bodyMedium.copyWith(
              color: AppSemanticColors.textSecondary,
            ),
          ),
          const Gap(12),
          AppButton(
            text: '갤러리에서 선택',
            size: AppButtonSize.medium,
            onPressed: _pickImageFromGallery,
          ),
          const Gap(16),
          _ImagePreview(
            file: _pickedImage,
            onClear: _pickedImage == null ? null : _clearImage,
          ),
          const Gap(32),
          Text(
            '영상',
            style: AppTextStyles.titleLarge.copyWith(
              color: AppSemanticColors.textPrimary,
            ),
          ),
          const Gap(8),
          Text(
            '갤러리에서 영상을 선택하면 1회 압축합니다. 압축 결과가 100MB를 넘으면 선택이 취소됩니다.',
            style: AppTextStyles.bodyMedium.copyWith(
              color: AppSemanticColors.textSecondary,
            ),
          ),
          const Gap(12),
          AppButton(
            text: _isCompressingVideo ? '처리 중…' : '갤러리에서 선택',
            size: AppButtonSize.medium,
            onPressed: _isCompressingVideo ? null : _pickVideoFromGallery,
          ),
          if (_isCompressingVideo) ...<Widget>[
            const Gap(12),
            const Center(child: CircularProgressIndicator()),
            const Gap(8),
            Text(
              '영상을 압축하는 중입니다.',
              textAlign: TextAlign.center,
              style: AppTextStyles.bodyMedium.copyWith(
                color: AppSemanticColors.textSecondary,
              ),
            ),
          ],
          const Gap(16),
          _VideoPreview(
            file: _pickedVideo,
            bytes: _pickedVideoBytes,
            originalBytes: _originalVideoBytes,
            onClear: _pickedVideo == null ? null : _clearVideo,
          ),
        ],
      ),
    );
  }
}

class _ImagePreview extends StatelessWidget {
  const _ImagePreview({required this.file, required this.onClear});

  final XFile? file;
  final VoidCallback? onClear;

  @override
  Widget build(BuildContext context) {
    if (file == null) {
      return const _EmptyPreview(label: '선택된 이미지 없음');
    }

    return _MediaCard(
      title: file!.name,
      subtitle: file!.path,
      onClear: onClear,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.file(
          File(file!.path),
          height: 200,
          width: double.infinity,
          fit: BoxFit.cover,
          errorBuilder: (_, __, ___) => const _EmptyPreview(
            label: '이미지를 불러올 수 없습니다',
          ),
        ),
      ),
    );
  }
}

class _VideoPreview extends StatelessWidget {
  const _VideoPreview({
    required this.file,
    required this.bytes,
    required this.originalBytes,
    required this.onClear,
  });

  final XFile? file;
  final int? bytes;
  final int? originalBytes;
  final VoidCallback? onClear;

  @override
  Widget build(BuildContext context) {
    if (file == null) {
      return const _EmptyPreview(label: '선택된 영상 없음');
    }

    final String sizeLabel = _videoSizeLabel(
      bytes: bytes,
      originalBytes: originalBytes,
    );

    return _MediaCard(
      title: file!.name,
      subtitle: sizeLabel.isEmpty ? file!.path : '$sizeLabel · ${file!.path}',
      onClear: onClear,
      child: Container(
        height: 120,
        width: double.infinity,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: AppSemanticColors.backgroundSurface,
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Icon(
          Icons.videocam_outlined,
          size: 48,
          color: AppSemanticColors.textSecondary,
        ),
      ),
    );
  }
}

class _MediaCard extends StatelessWidget {
  const _MediaCard({
    required this.title,
    required this.subtitle,
    required this.child,
    required this.onClear,
  });

  final String title;
  final String subtitle;
  final Widget child;
  final VoidCallback? onClear;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: AppSemanticColors.backgroundSurface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppSemanticColors.borderDefault),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    title,
                    style: AppTextStyles.labelMedium.copyWith(
                      color: AppSemanticColors.textPrimary,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                if (onClear != null)
                  IconButton(
                    onPressed: onClear,
                    icon: const Icon(Icons.close),
                    tooltip: '선택 해제',
                  ),
              ],
            ),
            Text(
              subtitle,
              style: AppTextStyles.bodySmall.copyWith(
                color: AppSemanticColors.textSecondary,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            const Gap(12),
            child,
          ],
        ),
      ),
    );
  }
}

class _EmptyPreview extends StatelessWidget {
  const _EmptyPreview({required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: AppSemanticColors.backgroundSurface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppSemanticColors.borderDefault),
      ),
      child: Text(
        label,
        style: AppTextStyles.bodyMedium.copyWith(
          color: AppSemanticColors.textSecondary,
        ),
      ),
    );
  }
}

String _fileName(String filePath) {
  final int separator = filePath.lastIndexOf(Platform.pathSeparator);
  if (separator == -1) {
    return filePath;
  }
  return filePath.substring(separator + 1);
}

String _videoSizeLabel({required int? bytes, required int? originalBytes}) {
  if (bytes == null) {
    return '';
  }
  if (originalBytes == null || originalBytes == bytes) {
    return _formatBytes(bytes);
  }
  return '${_formatBytes(originalBytes)} → ${_formatBytes(bytes)}';
}

String _formatBytes(int bytes) {
  if (bytes < 1024) {
    return '$bytes B';
  }
  if (bytes < 1024 * 1024) {
    return '${(bytes / 1024).toStringAsFixed(1)} KB';
  }
  return '${(bytes / (1024 * 1024)).toStringAsFixed(1)} MB';
}
