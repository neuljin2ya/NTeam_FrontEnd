import 'dart:io';

import 'package:flutter/material.dart';

import '../../../../config/theme/figma_colors.dart';

class UploadVideoPreview extends StatelessWidget {
  const UploadVideoPreview({
    super.key,
    this.thumbnailPath,
    this.isCompressing = false,
    this.isUploading = false,
    this.isRegistering = false,
    this.onChangeVideoPressed,
  });

  final String? thumbnailPath;
  final bool isCompressing;
  final bool isUploading;
  final bool isRegistering;
  final VoidCallback? onChangeVideoPressed;

  bool get _isBusy => isCompressing || isUploading || isRegistering;

  String get _busyMessage {
    if (isCompressing) {
      return '영상을 압축하는 중입니다.';
    }
    if (isUploading) {
      return '영상을 업로드하는 중입니다.';
    }
    return '영상을 등록하는 중입니다.';
  }

  @override
  Widget build(BuildContext context) {
    final String? previewPath = thumbnailPath;
    final VoidCallback? onPressed = _isBusy ? null : onChangeVideoPressed;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: onPressed,
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Container(
                width: 166,
                height: 230,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: FigmaColors.gray200,
                  borderRadius: BorderRadius.circular(16),
                  image: previewPath == null
                      ? null
                      : DecorationImage(
                          image: FileImage(File(previewPath)),
                          fit: BoxFit.cover,
                        ),
                ),
                child: _isBusy
                    ? null
                    : const Icon(
                        Icons.play_circle_outline,
                        color: FigmaColors.primary100,
                        size: 64,
                      ),
              ),
              if (_isBusy)
                Container(
                  width: 166,
                  height: 230,
                  decoration: BoxDecoration(
                    color: FigmaColors.black.withValues(alpha: 0.6),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const CircularProgressIndicator(
                        color: FigmaColors.primary100,
                      ),
                      const SizedBox(height: 12),
                      Text(
                        _busyMessage,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: FigmaColors.white,
                          fontSize: 14,
                          fontFamily: 'SUIT',
                          fontWeight: FontWeight.w400,
                          height: 1.43,
                          letterSpacing: -0.28,
                        ),
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ),
        const SizedBox(height: 14),
        GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: onPressed,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration: BoxDecoration(
              color: FigmaColors.gray300,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              _isBusy
                  ? '처리 중…'
                  : previewPath == null
                      ? '영상 추가하기'
                      : '영상 변경하기',
              style: const TextStyle(
                color: FigmaColors.white,
                fontSize: 16,
                fontFamily: 'SUIT',
                fontWeight: FontWeight.w500,
                height: 1.5,
                letterSpacing: -0.32,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
