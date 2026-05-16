import 'package:flutter/material.dart';

import 'tag.dart';
import '../config/theme/figma_colors.dart';

enum DifficultyLevel { low, medium, high }

/// Figma `Tag_Xs` 난이도 배지.
class DifficultyTag extends StatelessWidget {
  const DifficultyTag({
    super.key,
    required this.level,
  });

  final DifficultyLevel level;

  @override
  Widget build(BuildContext context) {
    final ({String label, Color background, Color foreground}) style =
        switch (level) {
      DifficultyLevel.low => (
          label: '난이도 하',
          background: FigmaColors.primary500,
          foreground: FigmaColors.primary100,
        ),
      DifficultyLevel.medium => (
          label: '난이도 중',
          background: const Color(0xFF1B3568),
          foreground: const Color(0xFF87DBFF),
        ),
      DifficultyLevel.high => (
          label: '난이도 상',
          background: const Color(0xFF515D17),
          foreground: const Color(0xFFD8F25A),
        ),
    };

    return Tag(
      text: style.label,
      backgroundColor: style.background,
      textColor: style.foreground,
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
      borderRadius: 12,
      fontSize: 10,
      fontWeight: FontWeight.w400,
    );
  }
}
