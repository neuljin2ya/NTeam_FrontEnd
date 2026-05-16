import 'package:flutter/material.dart';
import 'package:parkou_route/common/difficulty_tag.dart';
import 'package:parkou_route/common/tag.dart';
import 'package:parkou_route/config/theme/app_semantic_colors.dart';
import 'package:parkou_route/config/theme/figma_colors.dart';

class HomeSpotCardWidget extends StatelessWidget {
  const HomeSpotCardWidget({
    super.key,
    required this.title,
    required this.address,
    required this.difficulty,
    required this.statusTags,
    this.onTap,
  });

  final String title;
  final String address;
  final DifficultyLevel difficulty;
  final List<String> statusTags;
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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              _SpotImagePlaceholder(),
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

class _SpotImagePlaceholder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 72,
      height: 72,
      decoration: BoxDecoration(
        color: FigmaColors.gray400,
        borderRadius: BorderRadius.circular(8),
      ),
    );
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
                style: const TextStyle(
                  color: AppSemanticColors.textPrimary,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  height: 1.42,
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
          style: const TextStyle(
            color: AppSemanticColors.textSecondary,
            fontSize: 10,
            fontWeight: FontWeight.w400,
            height: 1.42,
            letterSpacing: -0.1,
          ),
        ),
        const SizedBox(height: 10),
        Row(
          spacing: 4,
          children: statusTags
              .map(
                (String tag) => Tag(
                  text: tag,
                  backgroundColor: FigmaColors.gray400,
                  textColor: AppSemanticColors.textPrimary,
                  padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
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
