import 'package:flutter/material.dart';

import '../../../../config/theme/figma_colors.dart';

class UploadVideoSkillSection extends StatelessWidget {
  const UploadVideoSkillSection({
    super.key,
    required this.controller,
    required this.skills,
    required this.canAddSkill,
    required this.onAddSkill,
    required this.onRemoveSkill,
    required this.onSkillTextChanged,
  });

  final TextEditingController controller;
  final List<String> skills;
  final bool canAddSkill;
  final VoidCallback onAddSkill;
  final ValueChanged<String> onRemoveSkill;
  final ValueChanged<String> onSkillTextChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const _SectionLabel(
            label: '어떤 기술을 사용하셨나요?',
            helper: '최대 8개',
          ),
          const SizedBox(height: 8),
          Row(
            children: <Widget>[
              Expanded(
                child: _SkillInput(
                  controller: controller,
                  onSubmitted: (_) => onAddSkill(),
                  onChanged: onSkillTextChanged,
                ),
              ),
              const SizedBox(width: 10),
              _AddSkillButton(
                isEnabled: canAddSkill,
                onPressed: canAddSkill ? onAddSkill : null,
              ),
            ],
          ),
          if (skills.isNotEmpty) ...<Widget>[
            const SizedBox(height: 14),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: skills
                  .map(
                    (String skill) => _SkillChip(
                      text: skill,
                      onDeleted: () => onRemoveSkill(skill),
                    ),
                  )
                  .toList(),
            ),
          ],
        ],
      ),
    );
  }
}

class _SectionLabel extends StatelessWidget {
  const _SectionLabel({
    required this.label,
    required this.helper,
  });

  final String label;
  final String helper;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(
          label,
          style: const TextStyle(
            color: FigmaColors.white,
            fontSize: 14,
            fontFamily: 'SUIT',
            fontWeight: FontWeight.w400,
            height: 1.5,
          ),
        ),
        const SizedBox(width: 8),
        Text(
          helper,
          style: const TextStyle(
            color: FigmaColors.gray100,
            fontSize: 12,
            fontFamily: 'SUIT',
            fontWeight: FontWeight.w400,
            height: 1.42,
            letterSpacing: -0.12,
          ),
        ),
      ],
    );
  }
}

class _SkillInput extends StatelessWidget {
  const _SkillInput({
    required this.controller,
    required this.onSubmitted,
    required this.onChanged,
  });

  final TextEditingController controller;
  final ValueChanged<String> onSubmitted;
  final ValueChanged<String> onChanged;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 47,
      child: TextField(
        controller: controller,
        onSubmitted: onSubmitted,
        onChanged: onChanged,
        textInputAction: TextInputAction.done,
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
          hintText: '직접 입력하여 기술 추가',
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
    );
  }
}

class _AddSkillButton extends StatelessWidget {
  const _AddSkillButton({
    required this.isEnabled,
    this.onPressed,
  });

  final bool isEnabled;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onPressed,
      child: Container(
        width: 74,
        height: 47,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: isEnabled ? FigmaColors.primary100 : FigmaColors.gray500,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          '추가',
          style: TextStyle(
            color: isEnabled ? FigmaColors.black : FigmaColors.gray100,
            fontSize: 16,
            fontFamily: 'SUIT',
            fontWeight: FontWeight.w700,
            height: 1.42,
            letterSpacing: -0.16,
          ),
        ),
      ),
    );
  }
}

class _SkillChip extends StatelessWidget {
  const _SkillChip({
    required this.text,
    required this.onDeleted,
  });

  final String text;
  final VoidCallback onDeleted;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: FigmaColors.primary500,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            text,
            style: const TextStyle(
              color: FigmaColors.primary50,
              fontSize: 14,
              fontFamily: 'SUIT',
              fontWeight: FontWeight.w400,
              height: 1.5,
            ),
          ),
          const SizedBox(width: 4),
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: onDeleted,
            child: const Icon(
              Icons.close,
              color: FigmaColors.primary50,
              size: 16,
            ),
          ),
        ],
      ),
    );
  }
}
