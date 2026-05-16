import 'package:flutter/material.dart';

import '../../../../config/theme/figma_colors.dart';

class UploadVideoSkillSection extends StatefulWidget {
  const UploadVideoSkillSection({
    super.key,
    required this.controller,
    required this.skills,
    required this.onAddSkill,
    required this.onRemoveSkill,
    this.maxSkillCount = 8,
    this.enabled = true,
  });

  final TextEditingController controller;
  final List<String> skills;
  final VoidCallback onAddSkill;
  final ValueChanged<String> onRemoveSkill;
  final int maxSkillCount;
  final bool enabled;

  @override
  State<UploadVideoSkillSection> createState() => _UploadVideoSkillSectionState();
}

class _UploadVideoSkillSectionState extends State<UploadVideoSkillSection> {
  @override
  void initState() {
    super.initState();
    widget.controller.addListener(_onSkillTextChanged);
  }

  @override
  void didUpdateWidget(covariant UploadVideoSkillSection oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.controller != widget.controller) {
      oldWidget.controller.removeListener(_onSkillTextChanged);
      widget.controller.addListener(_onSkillTextChanged);
    }
  }

  @override
  void dispose() {
    widget.controller.removeListener(_onSkillTextChanged);
    super.dispose();
  }

  void _onSkillTextChanged() {
    setState(() {});
  }

  bool get _canAddSkill {
    return widget.enabled &&
        widget.controller.text.trim().isNotEmpty &&
        widget.skills.length < widget.maxSkillCount;
  }

  void _tryAddSkill() {
    if (!_canAddSkill) {
      return;
    }
    widget.onAddSkill();
  }

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
                  controller: widget.controller,
                  enabled: widget.enabled,
                  onSubmitted: _tryAddSkill,
                ),
              ),
              const SizedBox(width: 10),
              _AddSkillButton(
                isEnabled: _canAddSkill,
                onPressed: _canAddSkill ? _tryAddSkill : null,
              ),
            ],
          ),
          if (widget.skills.isNotEmpty) ...<Widget>[
            const SizedBox(height: 14),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: widget.skills
                  .map(
                    (String skill) => _SkillChip(
                      text: skill,
                      onDeleted: () => widget.onRemoveSkill(skill),
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
    required this.enabled,
    required this.onSubmitted,
  });

  final TextEditingController controller;
  final bool enabled;
  final VoidCallback onSubmitted;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 47,
      child: TextField(
        controller: controller,
        enabled: enabled,
        onSubmitted: enabled ? (_) => onSubmitted() : null,
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
