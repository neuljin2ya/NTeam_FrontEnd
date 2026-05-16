import 'package:flutter/material.dart';

import '../../../../common/app_top_bar.dart';
import '../../../../config/theme/figma_colors.dart';

class SpotDetailStatusPage extends StatefulWidget {
  const SpotDetailStatusPage({
    super.key,
    this.onBackPressed,
    this.onSubmit,
  });

  final VoidCallback? onBackPressed;

  /// TODO: 선택된 상태 id 목록을 상태 남기기 상세 입력 화면 또는 API로 전달.
  final ValueChanged<List<String>>? onSubmit;

  @override
  State<SpotDetailStatusPage> createState() => _SpotDetailStatusPageState();
}

class _SpotDetailStatusPageState extends State<SpotDetailStatusPage> {
  static const int _maxSelectionCount = 6;

  final Set<String> _selectedOptionIds = <String>{};

  static const List<_StatusSectionData> _sections = <_StatusSectionData>[
    _StatusSectionData(
      title: '추천',
      icon: Icons.check_circle_outline,
      options: <_StatusOptionData>[
        _StatusOptionData(id: 'low_crowd', title: '혼잡도 낮음'),
        _StatusOptionData(id: 'good_training', title: '훈련하기 좋음'),
        _StatusOptionData(id: 'good_filming', title: '촬영하기 좋음'),
      ],
    ),
    _StatusSectionData(
      title: '주의 필요',
      icon: Icons.warning_amber_rounded,
      options: <_StatusOptionData>[
        _StatusOptionData(id: 'crowded', title: '사람 많음'),
        _StatusOptionData(id: 'wet_floor', title: '바닥 젖음'),
        _StatusOptionData(id: 'security', title: '경비 단속'),
        _StatusOptionData(id: 'dark_night', title: '야간 어두움'),
        _StatusOptionData(id: 'shooting_blocked', title: '촬영 제지 있음'),
        _StatusOptionData(id: 'complaint', title: '민원주의'),
      ],
    ),
    _StatusSectionData(
      title: '접근 불가/위험',
      icon: Icons.error_outline,
      options: <_StatusOptionData>[
        _StatusOptionData(id: 'broken_structure', title: '구조물 파손'),
        _StatusOptionData(id: 'construction', title: '공사 중'),
        _StatusOptionData(id: 'restricted', title: '출입 통제'),
        _StatusOptionData(id: 'changed_facility', title: '시설 변경됨'),
      ],
    ),
  ];

  bool get _canSubmit {
    return _selectedOptionIds.isNotEmpty;
  }

  void _handleBackPressed() {
    final VoidCallback? onBackPressed = widget.onBackPressed;

    if (onBackPressed != null) {
      onBackPressed();
      return;
    }

    Navigator.of(context).maybePop();
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
    return Scaffold(
      backgroundColor: FigmaColors.black,
      body: DecoratedBox(
        decoration: const BoxDecoration(color: FigmaColors.black),
        child: SafeArea(
          child: Column(
            children: <Widget>[
              AppTopBar(
                title: '최근 스팟 상태',
                onBackPressed: _handleBackPressed,
                backgroundColor: FigmaColors.black,
              ),
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.fromLTRB(16, 24, 16, 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const _ModalHeader(),
                      const SizedBox(height: 20),
                      ..._sections.indexed.map(
                        ((int, _StatusSectionData) entry) => _StatusSection(
                          section: entry.$2,
                          showDivider: entry.$1 < _sections.length - 1,
                          selectedOptionIds: _selectedOptionIds,
                          onOptionTap: _toggleOption,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 20),
                child: _SubmitButton(
                  isEnabled: _canSubmit,
                  onPressed: _canSubmit ? _submit : null,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

@Deprecated('Use SpotDetailStatusPage instead.')
typedef SpotDetailModal = SpotDetailStatusPage;

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
        LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            final double cardWidth = (constraints.maxWidth - 10) / 2;

            return Wrap(
              spacing: 10,
              runSpacing: 10,
              children: section.options
                  .map(
                    (_StatusOptionData option) => SizedBox(
                      width: cardWidth,
                      child: _StatusOptionButton(
                        title: option.title,
                        isSelected: selectedOptionIds.contains(option.id),
                        onPressed: () => onOptionTap(option.id),
                      ),
                    ),
                  )
                  .toList(),
            );
          },
        ),
        if (showDivider) const SizedBox(height: 20),
        if (showDivider) const _OptionDivider(),
        const SizedBox(height: 20),
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
            size: 20,
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
        ],
      ),
    );
  }
}

class _StatusOptionButton extends StatelessWidget {
  const _StatusOptionButton({
    required this.title,
    required this.isSelected,
    required this.onPressed,
  });

  final String title;
  final bool isSelected;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onPressed,
      child: Container(
        height: 46,
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          color: isSelected ? FigmaColors.primary600 : FigmaColors.gray400,
          border: isSelected
              ? Border.all(
                  color: FigmaColors.primary100,
                )
              : null,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(
          title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: isSelected ? FigmaColors.primary50 : FigmaColors.white,
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
          '다음으로',
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
  });

  final String id;
  final String title;
}
