import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../common/app_button.dart';
import '../../../../common/app_modal.dart';
import '../../../../common/app_top_bar.dart';
import '../../../../config/theme/app_text_styles.dart';
import '../../../../config/theme/figma_colors.dart';
import '../viewmodel/spot_detail_review_view_model.dart';

class SpotDetailReviewPage extends ConsumerStatefulWidget {
  const SpotDetailReviewPage({
    super.key,
    required this.spotId,
    this.selectedStatusIds = const <String>[],
  });

  final int spotId;
  final List<String> selectedStatusIds;

  @override
  ConsumerState<SpotDetailReviewPage> createState() =>
      _SpotDetailReviewPageState();
}

class _SpotDetailReviewPageState extends ConsumerState<SpotDetailReviewPage> {
  final TextEditingController _reviewController = TextEditingController();

  @override
  void dispose() {
    _reviewController.dispose();
    super.dispose();
  }

  Future<void> _submitReview() async {
    if (widget.spotId <= 0) {
      _showError('잘못된 스팟 정보입니다.');
      return;
    }

    if (widget.selectedStatusIds.isEmpty) {
      _showError('선택한 스팟 상태가 없습니다.');
      return;
    }

    final bool isSubmitting = ref.read(spotDetailReviewViewModelProvider);
    if (isSubmitting) {
      return;
    }

    final String? errorMessage = await ref
        .read(spotDetailReviewViewModelProvider.notifier)
        .submit(
          spotId: widget.spotId,
          description: _reviewController.text.trim(),
          statuses: widget.selectedStatusIds,
        );

    if (!mounted) {
      return;
    }

    if (errorMessage != null) {
      _showError(errorMessage);
      return;
    }

    await _showSuccessModal();
  }

  Future<void> _showSuccessModal() async {
    await showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext dialogContext) => Dialog(
        backgroundColor: Colors.transparent,
        child: AppModal(
          title: '스팟 상태 등록이 완료되었어요',
          description: '스팟 상세 화면에서 확인할 수 있습니다.',
          primaryButtonText: '확인',
          primaryButtonColor: FigmaColors.primaryMain,
          onPrimaryPressed: () {
            Navigator.of(dialogContext).pop();
            if (mounted) {
              Navigator.of(context).pop(true);
            }
          },
          onClosePressed: () {
            Navigator.of(dialogContext).pop();
            if (mounted) {
              Navigator.of(context).pop(true);
            }
          },
        ),
      ),
    );
  }

  void _showError(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  @override
  Widget build(BuildContext context) {
    final bool isSubmitting = ref.watch(spotDetailReviewViewModelProvider);

    return Scaffold(
      backgroundColor: FigmaColors.black,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            AppTopBar(
              title: '최근 스팟 상태',
              onBackPressed: () {
                GoRouter.of(context).pop();
              },
              backgroundColor: FigmaColors.black,
            ),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.fromLTRB(16, 12, 16, 120),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const _ReviewHeader(),
                    const SizedBox(height: 18),
                    _ReviewInput(controller: _reviewController),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 20),
              child: AppButton(
                text: '입력 완료',
                onPressed: isSubmitting ? null : _submitReview,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ReviewHeader extends StatelessWidget {
  const _ReviewHeader();

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Flexible(
          child: Text(
            '한 줄 후기를 작성해주세요',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: AppTextStyles.headlineLarge.copyWith(
              color: FigmaColors.white,
              height: 1.42,
              letterSpacing: -0.4,
            ),
          ),
        ),
        const SizedBox(width: 6),
        Padding(
          padding: const EdgeInsets.only(bottom: 2),
          child: Text(
            '선택',
            style: AppTextStyles.labelSmall.copyWith(
              color: FigmaColors.gray100,
              height: 1.42,
              letterSpacing: -0.12,
            ),
          ),
        ),
      ],
    );
  }
}

class _ReviewInput extends StatelessWidget {
  const _ReviewInput({required this.controller});

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      maxLength: 50,
      maxLines: null,
      minLines: 5,
      cursorColor: FigmaColors.white,
      style: AppTextStyles.bodyLarge.copyWith(
        color: FigmaColors.white,
        height: 1.42,
      ),
      decoration: InputDecoration(
        counterText: '',
        filled: true,
        fillColor: FigmaColors.gray600,
        hintText: '입력해주세요.(최대 50자)',
        hintStyle: AppTextStyles.bodyLarge.copyWith(
          color: FigmaColors.gray100,
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
    );
  }
}
