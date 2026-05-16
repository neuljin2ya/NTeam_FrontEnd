import 'package:flutter/material.dart';

import '../../../../config/theme/figma_colors.dart';

class UploadVideoDescriptionSection extends StatelessWidget {
  const UploadVideoDescriptionSection({
    super.key,
    required this.controller,
    required this.onChanged,
  });

  final TextEditingController controller;
  final ValueChanged<String> onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            '간단한 동영상 설명을 입력해주세요.',
            style: TextStyle(
              color: FigmaColors.white,
              fontSize: 14,
              fontFamily: 'SUIT',
              fontWeight: FontWeight.w400,
              height: 1.5,
            ),
          ),
          const SizedBox(height: 8),
          SizedBox(
            height: 86,
            child: TextField(
              controller: controller,
              onChanged: onChanged,
              maxLines: null,
              expands: true,
              textAlignVertical: TextAlignVertical.top,
              cursorColor: FigmaColors.white,
              style: const TextStyle(
                color: FigmaColors.white,
                fontSize: 16,
                fontFamily: 'SUIT',
                fontWeight: FontWeight.w400,
                height: 1.42,
              ),
              decoration: InputDecoration(
                filled: true,
                fillColor: FigmaColors.gray600,
                hintText: '입력해주세요.',
                hintStyle: const TextStyle(
                  color: FigmaColors.gray100,
                  fontSize: 16,
                  fontFamily: 'SUIT',
                  fontWeight: FontWeight.w400,
                  height: 1.42,
                ),
                contentPadding: const EdgeInsets.all(12),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
