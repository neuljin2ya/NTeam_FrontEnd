import 'dart:async';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../config/theme/figma_colors.dart';
import '../features/file/data/providers/file_providers.dart';

/// 서버 파일 URL을 파일 API로 바이너리 조회 후 메모리 이미지로 표시합니다.
class AppRemoteFileImage extends ConsumerStatefulWidget {
  const AppRemoteFileImage({
    super.key,
    this.fileUrl,
    this.width = 72,
    this.height = 72,
    this.borderRadius = 8,
    this.backgroundColor = FigmaColors.gray400,
  });

  final String? fileUrl;
  final double width;
  final double height;
  final double borderRadius;
  final Color backgroundColor;

  @override
  ConsumerState<AppRemoteFileImage> createState() => _AppRemoteFileImageState();
}

class _AppRemoteFileImageState extends ConsumerState<AppRemoteFileImage> {
  Uint8List? _imageBytes;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    unawaited(_resolveFileUrl());
  }

  @override
  void didUpdateWidget(covariant AppRemoteFileImage oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.fileUrl != widget.fileUrl) {
      unawaited(_resolveFileUrl());
    }
  }

  Future<void> _resolveFileUrl() async {
    final String trimmed = widget.fileUrl?.trim() ?? '';
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
      borderRadius: BorderRadius.circular(widget.borderRadius),
      child: SizedBox(
        width: widget.width,
        height: widget.height,
        child: ColoredBox(
          color: widget.backgroundColor,
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
        width: widget.width,
        height: widget.height,
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
