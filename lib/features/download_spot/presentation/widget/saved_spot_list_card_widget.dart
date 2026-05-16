import 'package:flutter/material.dart';

import '../../../../common/app_remote_file_image.dart';
import '../../../../common/difficulty_tag.dart';
import '../../../../common/tag.dart';
import '../../../../config/theme/app_text_styles.dart';
import '../../../../config/theme/figma_colors.dart';

class SavedSpotListCardWidget extends StatelessWidget {
  const SavedSpotListCardWidget({
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
              AppRemoteFileImage(fileUrl: captionImgUrl),
              const SizedBox(width: 16),
              Expanded(
                child: _SavedSpotInfoColumn(
                  title: title,
                  address: address,
                  difficulty: difficulty,
                  statusTags: statusTags,
                ),
              ),
              const Icon(
                Icons.chevron_right,
                size: 16,
                color: FigmaColors.gray100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SavedSpotInfoColumn extends StatelessWidget {
  const _SavedSpotInfoColumn({
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
                  color: FigmaColors.white,
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
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: AppTextStyles.labelSmall.copyWith(
            color: FigmaColors.gray100,
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
