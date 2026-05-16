import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../common/app_button.dart';
import '../../../../common/app_input_field.dart';
import '../../../../common/app_modal.dart';
import '../../../../common/app_top_bar.dart';
import '../../../../common/difficulty_tag.dart';
import '../../../../common/obstacle_option_card.dart';
import '../../../../common/tab_fold_button.dart';
import '../../../../common/tab_button.dart';
import '../../../../common/tag.dart';
import '../../../../config/theme/app_text_styles.dart';
import '../../../../config/theme/figma_colors.dart';
import '../../../../domain/maps/entity/map_location.dart';
import '../../../../router/app_router.dart';
import '../../../home/presentation/viewmodel/home_view_model.dart';
import '../util/new_spot_constants.dart';
import '../viewmodel/new_spot_ui_model.dart';
import '../viewmodel/new_spot_view_model.dart';

/// Figma `4. 스팟 정보 등록` — 새 스팟 등록 화면.
class NewSpotPage extends ConsumerStatefulWidget {
  const NewSpotPage({super.key});

  @override
  ConsumerState<NewSpotPage> createState() => _NewSpotPageState();
}

class _NewSpotPageState extends ConsumerState<NewSpotPage> {
  final ImagePicker _imagePicker = ImagePicker();

  late final TextEditingController _nameController;
  late final TextEditingController _addressController;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _addressController = TextEditingController();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _addressController.dispose();
    super.dispose();
  }

  NewSpotViewModel get _viewModel => ref.read(newSpotViewModelProvider.notifier);

  Future<void> _pickCaptionImage() async {
    final NewSpotPhotoSource source =
        ref.read(newSpotViewModelProvider).photoSource ??
            NewSpotPhotoSource.gallery;

    try {
      final XFile? file = await _imagePicker.pickImage(
        source: source == NewSpotPhotoSource.camera
            ? ImageSource.camera
            : ImageSource.gallery,
        maxWidth: 4096,
        maxHeight: 4096,
        imageQuality: 90,
      );
      if (!mounted || file == null) {
        return;
      }
      await _viewModel.uploadCaptionImage(file.path);
      if (!mounted) {
        return;
      }
      final String? uploadError = ref.read(newSpotViewModelProvider).errorMessage;
      if (uploadError != null &&
          ref.read(newSpotViewModelProvider).captionImgUrl == null) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(uploadError)),
        );
      }
    } catch (error) {
      if (!mounted) {
        return;
      }
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('이미지를 선택하지 못했습니다.\n$error')),
      );
    }
  }

  Future<void> _openAddressPicker() async {
    final MapLocation? location = await context.push<MapLocation>(
      SGRoute.newSpotAddress.route,
    );
    if (location == null || !mounted) {
      return;
    }
    _addressController.text = location.fullAddress;
    _viewModel.setSelectedLocation(location);
  }

  Future<void> _onRegisterPressed() async {
    final bool? confirmed = await _showConfirmModal();
    if (confirmed != true || !mounted) {
      return;
    }
    await _onCompletePressed();
  }

  Future<void> _onCompletePressed() async {
    final bool success = await _viewModel.submit();
    if (!mounted) {
      return;
    }
    if (success) {
      await _showSuccessModal();
      return;
    }
    final String? message = ref.read(newSpotViewModelProvider).errorMessage;
    if (message != null) {
      await _showErrorModal(message);
    }
  }

  Future<bool?> _showConfirmModal() {
    return showDialog<bool>(
      context: context,
      builder: (BuildContext dialogContext) => Dialog(
        backgroundColor: Colors.transparent,
        child: AppModal(
          title: '새 스팟을 등록하시겠어요?',
          description: '한 번 등록하면 수정이 어려워요',
          secondaryButtonText: '취소 하기',
          primaryButtonText: '등록 하기',
          primaryButtonColor: FigmaColors.primaryMain,
          onSecondaryPressed: () => Navigator.of(dialogContext).pop(false),
          onPrimaryPressed: () => Navigator.of(dialogContext).pop(true),
          onClosePressed: () => Navigator.of(dialogContext).pop(false),
        ),
      ),
    );
  }

  void _returnHomeAndRefreshSpots() {
    if (!mounted) {
      return;
    }
    unawaited(ref.read(homeViewModelProvider.notifier).loadAllSpots());
    context.go(SGRoute.home.route);
  }

  Future<void> _showSuccessModal() async {
    await showDialog<void>(
      context: context,
      builder: (BuildContext dialogContext) => Dialog(
        backgroundColor: Colors.transparent,
        child: AppModal(
          title: '스팟이 등록되었어요',
          description: '내 스팟 목록에서 확인할 수 있습니다.',
          primaryButtonText: '확인',
          onPrimaryPressed: () {
            Navigator.of(dialogContext).pop();
            _returnHomeAndRefreshSpots();
          },
          onClosePressed: () {
            Navigator.of(dialogContext).pop();
            _returnHomeAndRefreshSpots();
          },
        ),
      ),
    );
  }

  Future<void> _showErrorModal(String message) async {
    await showDialog<void>(
      context: context,
      builder: (BuildContext context) => Dialog(
        backgroundColor: Colors.transparent,
        child: AppModal(
          title: '등록할 수 없어요',
          description: message,
          primaryButtonText: '확인',
          onPrimaryPressed: () => Navigator.of(context).pop(),
          onClosePressed: () => Navigator.of(context).pop(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final NewSpotUiModel uiState = ref.watch(newSpotViewModelProvider);
    final double fieldWidth = MediaQuery.sizeOf(context).width - 32;

    return Scaffold(
      backgroundColor: FigmaColors.black,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            AppTopBar(
              title: '새 스팟 등록',
              onBackPressed: () => GoRouter.of(context).pop(),
            ),
            Expanded(
              child: CustomScrollView(
                slivers: <Widget>[
                  SliverToBoxAdapter(
                    child: _PhotoUploadSection(
                      uiState: uiState,
                      onPickImage: _pickCaptionImage,
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: DecoratedBox(
                      decoration: const BoxDecoration(
                        color: FigmaColors.black,
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(12),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 24, bottom: 24),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            _LabeledField(
                              label: '장소명',
                              child: AppInputField(
                                controller: _nameController,
                                hintText: '예) 서울숲 야외광장',
                                width: fieldWidth,
                                onChanged: _viewModel.setSpotName,
                              ),
                            ),
                            const SizedBox(height: 40),
                            _LabeledField(
                              label: '주소',
                              child: AppInputField(
                                controller: _addressController,
                                hintText: '주소를 입력해주세요',
                                width: fieldWidth,
                                svgIcon: 'assets/icons/icon_search.svg',
                                applyPrefixIconColorFilter: false,
                                readOnly: true,
                                onTap: _openAddressPicker,
                              ),
                            ),
                            const SizedBox(height: 40),
                            _DifficultySection(
                              selected: uiState.difficulty,
                              onSelected: _viewModel.setDifficulty,
                            ),
                            const SizedBox(height: 40),
                            _ObstacleSection(uiState: uiState),
                            const SizedBox(height: 40),
                            _EnvironmentSection(uiState: uiState),
                            const SizedBox(height: 24),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            _BottomSaveBar(
              isSubmitting: uiState.isSubmitting,
              isUploadingCaption: uiState.isUploadingCaption,
              onPressed: _onRegisterPressed,
            ),
          ],
        ),
      ),
    );
  }
}

class _PhotoUploadSection extends StatelessWidget {
  const _PhotoUploadSection({
    required this.uiState,
    required this.onPickImage,
  });

  final NewSpotUiModel uiState;
  final VoidCallback onPickImage;

  @override
  Widget build(BuildContext context) {
    final String? imagePath = uiState.captionImagePath;
    final bool hasImage = imagePath != null && imagePath.isNotEmpty;

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onPickImage,
      child: Container(
        width: double.infinity,
        height: 258,
        color: FigmaColors.gray300,
        child: hasImage
            ? Stack(
                fit: StackFit.expand,
                children: <Widget>[
                  Image.file(
                    File(imagePath),
                    fit: BoxFit.cover,
                    errorBuilder: (
                      BuildContext context,
                      Object error,
                      StackTrace? stackTrace,
                    ) {
                      return _PhotoUploadPlaceholder(hasImage: false);
                    },
                  ),
                  DecoratedBox(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: <Color>[
                          FigmaColors.black.withValues(alpha: 0.2),
                          Colors.transparent,
                          FigmaColors.black.withValues(alpha: 0.45),
                        ],
                      ),
                    ),
                  ),
                  if (uiState.isUploadingCaption)
                    const ColoredBox(
                      color: Color(0x99000000),
                      child: Center(
                        child: CircularProgressIndicator(
                          color: FigmaColors.primary200,
                        ),
                      ),
                    ),
                ],
              )
            : _PhotoUploadPlaceholder(hasImage: false),
      ),
    );
  }
}

class _PhotoUploadPlaceholder extends StatelessWidget {
  const _PhotoUploadPlaceholder({required this.hasImage});

  final bool hasImage;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          Icons.add_circle_outline,
          size: 64,
          color: hasImage ? FigmaColors.primary100 : FigmaColors.white,
        ),
        const SizedBox(height: 4),
        Text(
          hasImage ? '대표 사진이 선택됨' : '대표 사진 업로드 하기',
          textAlign: TextAlign.center,
          style: AppTextStyles.bodyLarge.copyWith(
            color: FigmaColors.white,
          ),
        ),
      ],
    );
  }
}

class _LabeledField extends StatelessWidget {
  const _LabeledField({
    required this.label,
    required this.child,
  });

  final String label;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            label,
            style: AppTextStyles.bodyMedium.copyWith(color: FigmaColors.gray100),
          ),
          const SizedBox(height: 8),
          child,
        ],
      ),
    );
  }
}

class _DifficultySection extends StatelessWidget {
  const _DifficultySection({
    required this.selected,
    required this.onSelected,
  });

  final DifficultyLevel selected;
  final ValueChanged<DifficultyLevel> onSelected;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                '난이도',
                style: AppTextStyles.bodyMedium.copyWith(
                  color: FigmaColors.gray100,
                ),
              ),
              const SizedBox(width: 8),
              DifficultyTag(level: selected),
            ],
          ),
          const SizedBox(height: 8),
          SizedBox(
            width: 327,
            height: 40,
            child: Row(
              children: NewSpotConstants.difficultyLevels.map((DifficultyLevel level) {
                final bool isSelected = level == selected;
                final int index = NewSpotConstants.difficultyLevels.indexOf(level);
                final bool isFirst = index == 0;
                final bool isLast =
                    index == NewSpotConstants.difficultyLevels.length - 1;

                return Expanded(
                  child: GestureDetector(
                    onTap: () => onSelected(level),
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: isSelected
                            ? FigmaColors.primary100
                            : FigmaColors.gray300,
                        borderRadius: BorderRadius.horizontal(
                          left: isFirst ? const Radius.circular(8) : Radius.zero,
                          right: isLast ? const Radius.circular(8) : Radius.zero,
                        ),
                        border: Border(
                          left: isFirst
                              ? BorderSide.none
                              : const BorderSide(color: FigmaColors.gray200),
                        ),
                      ),
                      child: Text(
                        NewSpotConstants.difficultyLabel(level),
                        style: AppTextStyles.labelLarge.copyWith(
                          color: isSelected
                              ? FigmaColors.black
                              : FigmaColors.gray100,
                          letterSpacing: -0.16,
                        ),
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}

class _ObstacleSection extends ConsumerWidget {
  const _ObstacleSection({required this.uiState});

  final NewSpotUiModel uiState;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final NewSpotViewModel viewModel =
        ref.read(newSpotViewModelProvider.notifier);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TabFoldButton(
            text: '장애물 유형',
            isExpanded: uiState.isObstacleSectionExpanded,
            width: double.infinity,
            onPressed: viewModel.toggleObstacleSectionExpanded,
          ),
          if (uiState.isObstacleSectionExpanded) ...<Widget>[
            const SizedBox(height: 8),
            ..._chunkObstacles(NewSpotConstants.obstacles, 3).map(
              (List<NewSpotObstacleOption> row) => Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Row(
                  children: row.map((NewSpotObstacleOption option) {
                    final bool isSelected =
                        uiState.selectedObstacleIds.contains(option.id);
                    return Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: isSelected
                          ? ObstacleOptionCard.selected(
                              text: option.label,
                              svgIcon: option.svgIcon,
                              onPressed: () => viewModel.toggleObstacle(option.id),
                            )
                          : ObstacleOptionCard(
                              text: option.label,
                              svgIcon: option.svgIcon,
                              onPressed: () => viewModel.toggleObstacle(option.id),
                            ),
                    );
                  }).toList(),
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }

  List<List<NewSpotObstacleOption>> _chunkObstacles(
    List<NewSpotObstacleOption> items,
    int size,
  ) {
    final List<List<NewSpotObstacleOption>> rows = <List<NewSpotObstacleOption>>[];
    for (int i = 0; i < items.length; i += size) {
      rows.add(
        items.sublist(
          i,
          i + size > items.length ? items.length : i + size,
        ),
      );
    }
    return rows;
  }
}

class _EnvironmentSection extends ConsumerWidget {
  const _EnvironmentSection({required this.uiState});

  final NewSpotUiModel uiState;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final NewSpotViewModel viewModel =
        ref.read(newSpotViewModelProvider.notifier);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            '공간 환경',
            style: AppTextStyles.bodyMedium.copyWith(color: FigmaColors.gray100),
          ),
          const SizedBox(height: 8),
          Wrap(
            spacing: 6,
            runSpacing: 6,
            children: NewSpotConstants.environmentTags
                .map((NewSpotEnvironmentOption option) {
              final bool isSelected =
                  uiState.selectedEnvironmentTags.contains(option.id);
              return GestureDetector(
                onTap: () => viewModel.toggleEnvironmentTag(option.id),
                child: isSelected
                    ? Tag(
                        text: option.label,
                        backgroundColor: FigmaColors.primary100,
                        textColor: FigmaColors.black,
                        borderRadius: 16,
                        fontWeight: FontWeight.w400,
                      )
                    : Tag(
                        text: option.label,
                        backgroundColor: FigmaColors.gray400,
                        textColor: FigmaColors.gray100,
                        borderRadius: 16,
                        fontWeight: FontWeight.w400,
                      ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}

class _BottomSaveBar extends StatelessWidget {
  const _BottomSaveBar({
    required this.isSubmitting,
    required this.isUploadingCaption,
    required this.onPressed,
  });

  final bool isSubmitting;
  final bool isUploadingCaption;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final bool isDisabled = isSubmitting || isUploadingCaption;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        color: FigmaColors.black,
        border: Border(top: BorderSide(color: FigmaColors.gray400)),
      ),
      child: AppButton(
        text: isSubmitting
            ? '저장 중…'
            : isUploadingCaption
                ? '이미지 업로드 중…'
                : '등록',
        width: double.infinity,
        onPressed: isDisabled ? null : onPressed,
      ),
    );
  }
}
