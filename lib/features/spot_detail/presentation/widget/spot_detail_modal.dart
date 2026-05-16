import 'package:flutter/material.dart';

import '../../../../common/condition_option_card.dart';
import '../../../../config/theme/figma_colors.dart';

class SpotDetailModal extends StatefulWidget {
  const SpotDetailModal({
    super.key,
    this.onSubmit,
  });

  /// TODO: 상태 남기기 상세 입력 화면 연결 또는 상태 등록 API 호출.
  final ValueChanged<List<String>>? onSubmit;

  @override
  State<SpotDetailModal> createState() => _SpotDetailModalState();
}

class _SpotDetailModalState extends State<SpotDetailModal> {
  static const int _maxSelectionCount = 6;

  final Set<String> _selectedOptionIds = <String>{};

  static const List<_StatusSectionData> _sections = <_StatusSectionData>[
    _StatusSectionData(
      title: '추천',
      icon: Icons.check_circle_outline,
      options: <_StatusOptionData>[
        _StatusOptionData(
          id: 'pleasant',
          title: '쾌적함',
          description: '사람 적고 상태 양호',
        ),
        _StatusOptionData(
          id: 'good_training',
          title: '훈련하기 좋음',
          description: '바닥, 구조물 모두 양호',
        ),
        _StatusOptionData(
          id: 'good_filming',
          title: '촬영하기 좋음',
          description: '조명, 배경 조건 좋음',
        ),
      ],
    ),
    _StatusSectionData(
      title: '주의 필요',
      icon: Icons.warning_amber_rounded,
      options: <_StatusOptionData>[
        _StatusOptionData(
          id: 'crowded',
          title: '사람 많음',
          description: '사람 적고 상태 양호',
        ),
        _StatusOptionData(
          id: 'wet_floor',
          title: '바닥 젖음',
          description: '미끄러운 상태',
        ),
        _StatusOptionData(
          id: 'security',
          title: '경비 단속',
          description: '단속 인력 있음',
        ),
        _StatusOptionData(
          id: 'dark_night',
          title: '야간 어두움',
          description: '바닥, 구조물 모두 양호',
        ),
        _StatusOptionData(
          id: 'complaint',
          title: '민원주의',
          description: '바닥, 구조물 모두 양호',
        ),
      ],
    ),
    _StatusSectionData(
      title: '접근 불가/위험',
      icon: Icons.error_outline,
      options: <_StatusOptionData>[
        _StatusOptionData(
          id: 'broken_structure',
          title: '구조물 파손',
          description: '난간, 벽 등 손상',
        ),
        _StatusOptionData(
          id: 'construction',
          title: '공사 중',
          description: '접근 불가 상태',
        ),
        _StatusOptionData(
          id: 'restricted',
          title: '출입 통제',
          description: '진입 차단됨',
        ),
        _StatusOptionData(
          id: 'changed_facility',
          title: '시설 변경됨',
          description: '구조물 형태 달라짐',
        ),
      ],
    ),
  ];

  bool get _canSubmit {
    return _sections.every(
      (_StatusSectionData section) => section.options.any(
        (_StatusOptionData option) => _selectedOptionIds.contains(option.id),
      ),
    );
  }

  void _toggleOption(String optionId) {
    setState(() {
      if (_selectedOptionIds.contains(optionId)) {
        _selectedOptionIds.remove(optionId);
        return;
      }

      if (_selectedOptionIds.length >= _maxSelectionCount) {
        return;
      }

      _selectedOptionIds.add(optionId);
    });
  }

  void _submit() {
    if (!_canSubmit) {
      return;
    }

    widget.onSubmit?.call(_selectedOptionIds.toList(growable: false));
  }

  @override
  Widget build(BuildContext context) {
    final double maxHeight = MediaQuery.sizeOf(context).height * 0.92;

    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: maxHeight),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.fromLTRB(16, 10, 16, 30),
        decoration: const BoxDecoration(
          color: FigmaColors.gray600,
          borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Center(child: _ModalHandle()),
              const SizedBox(height: 28),
              const _ModalHeader(),
              const SizedBox(height: 20),
              ..._sections.map(
                (_StatusSectionData section) => _StatusSection(
                  section: section,
                  showDivider: section != _sections.last,
                  selectedOptionIds: _selectedOptionIds,
                  onOptionTap: _toggleOption,
                ),
              ),
              const SizedBox(height: 20),
              _SubmitButton(
                isEnabled: _canSubmit,
                onPressed: _canSubmit ? _submit : null,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ModalHandle extends StatelessWidget {
  const _ModalHandle();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 31,
      height: 3,
      decoration: BoxDecoration(
        color: FigmaColors.gray100,
        borderRadius: BorderRadius.circular(9999),
      ),
    );
  }
}

class _ModalHeader extends StatelessWidget {
  const _ModalHeader();

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          '지금 이 스팟 , 어떤가요?',
          style: TextStyle(
            color: FigmaColors.white,
            fontSize: 20,
            fontFamily: 'SUIT',
            fontWeight: FontWeight.w700,
            height: 1.42,
            letterSpacing: -0.4,
          ),
        ),
        SizedBox(height: 2),
        Text(
          '현재 이 스팟이 어떤지 1~6개를 선택하여 알려주세요!',
          style: TextStyle(
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

class _StatusSection extends StatelessWidget {
  const _StatusSection({
    required this.section,
    required this.showDivider,
    required this.selectedOptionIds,
    required this.onOptionTap,
  });

  final _StatusSectionData section;
  final bool showDivider;
  final Set<String> selectedOptionIds;
  final ValueChanged<String> onOptionTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _StatusSectionHeader(section: section),
        const SizedBox(height: 8),
        Wrap(
          spacing: 10,
          runSpacing: 10,
          children: section.options
              .map(
                (_StatusOptionData option) => SizedBox(
                  width: 159,
                  child: selectedOptionIds.contains(option.id)
                      ? ConditionOptionCard.selected(
                          title: option.title,
                          description: option.description,
                          contentWidth: 127,
                          onPressed: () => onOptionTap(option.id),
                        )
                      : ConditionOptionCard(
                          title: option.title,
                          description: option.description,
                          contentWidth: 127,
                          onPressed: () => onOptionTap(option.id),
                        ),
                ),
              )
              .toList(),
        ),
        const SizedBox(height: 20),
        if (showDivider) const _OptionDivider(),
        if (showDivider) const SizedBox(height: 10),
      ],
    );
  }
}

class _StatusSectionHeader extends StatelessWidget {
  const _StatusSectionHeader({required this.section});

  final _StatusSectionData section;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 47,
      child: Row(
        children: <Widget>[
          Icon(
            section.icon,
            color: FigmaColors.gray100,
            size: 22,
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              section.title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                color: FigmaColors.gray100,
                fontSize: 16,
                fontFamily: 'SUIT',
                fontWeight: FontWeight.w700,
                height: 1.42,
                letterSpacing: -0.16,
              ),
            ),
          ),
          const Icon(
            Icons.keyboard_arrow_up,
            color: FigmaColors.gray100,
            size: 24,
          ),
        ],
      ),
    );
  }
}

class _OptionDivider extends StatelessWidget {
  const _OptionDivider();

  @override
  Widget build(BuildContext context) {
    return const Divider(
      height: 1,
      thickness: 1,
      color: FigmaColors.gray400,
    );
  }
}

class _SubmitButton extends StatelessWidget {
  const _SubmitButton({
    required this.isEnabled,
    required this.onPressed,
  });

  final bool isEnabled;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onPressed,
      child: Container(
        width: double.infinity,
        height: 60,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: isEnabled ? FigmaColors.primary100 : FigmaColors.gray500,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Text(
          '상태 남기기',
          style: TextStyle(
            color: isEnabled ? FigmaColors.black : FigmaColors.gray100,
            fontSize: 20,
            fontFamily: 'SUIT',
            fontWeight: FontWeight.w700,
            height: 1.42,
            letterSpacing: -0.4,
          ),
        ),
      ),
    );
  }
}

class _StatusSectionData {
  const _StatusSectionData({
    required this.title,
    required this.icon,
    required this.options,
  });

  final String title;
  final IconData icon;
  final List<_StatusOptionData> options;
}

class _StatusOptionData {
  const _StatusOptionData({
    required this.id,
    required this.title,
    required this.description,
  });

  final String id;
  final String title;
  final String description;
}
