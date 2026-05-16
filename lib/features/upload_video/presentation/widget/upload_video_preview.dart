import 'dart:io';

import 'package:flutter/material.dart';

import '../../../../config/theme/figma_colors.dart';

class UploadVideoPreview extends StatelessWidget {
  const UploadVideoPreview({
    super.key,
    this.thumbnailPath,
    this.onChangeVideoPressed,
  });

  final String? thumbnailPath;
  final VoidCallback? onChangeVideoPressed;

  @override
  Widget build(BuildContext context) {
    final String? previewPath = thumbnailPath;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: onChangeVideoPressed,
          child: Container(
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
            child: const Icon(
              Icons.play_circle_outline,
              color: FigmaColors.primary100,
              size: 64,
            ),
          ),
        ),
        const SizedBox(height: 14),
        GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: onChangeVideoPressed,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration: BoxDecoration(
              color: FigmaColors.gray300,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              previewPath == null ? '영상 추가하기' : '영상 변경하기',
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
