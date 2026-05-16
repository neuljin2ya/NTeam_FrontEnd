import 'package:flutter/material.dart';

import '../../../../common/app_top_bar.dart';
import '../../../../config/theme/figma_colors.dart';

class SpotDetailReviewPage extends StatefulWidget {
  const SpotDetailReviewPage({
    super.key,
    this.selectedStatusIds = const <String>[],
  });

  final List<String> selectedStatusIds;

  @override
  State<SpotDetailReviewPage> createState() => _SpotDetailReviewPageState();
}

class _SpotDetailReviewPageState extends State<SpotDetailReviewPage> {
  final TextEditingController _reviewController = TextEditingController();

  @override
  void dispose() {
    _reviewController.dispose();
    super.dispose();
  }

  void _submitReview() {
    final String review = _reviewController.text.trim();

    // TODO: widget.selectedStatusIds와 review를 최근 스팟 상태 등록 API로 전달.
    // TODO: 등록 성공 후 스팟 상세 화면으로 pop 또는 완료 화면 연결.
    Navigator.of(context).maybePop(<String, Object>{
      'selectedStatusIds': widget.selectedStatusIds,
      'review': review,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FigmaColors.black,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: <Widget>[
            AppTopBar(
              title: '최근 스팟 상태',
              onBackPressed: () {
                Navigator.of(context).maybePop();
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
              child: _CompleteButton(onPressed: _submitReview),
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
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Flexible(
          child: Text(
            '한 줄 후기를 작성해주세요',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: FigmaColors.white,
              fontSize: 20,
              fontFamily: 'SUIT',
              fontWeight: FontWeight.w700,
              height: 1.42,
              letterSpacing: -0.4,
            ),
          ),
        ),
        SizedBox(width: 6),
        Padding(
          padding: EdgeInsets.only(bottom: 2),
          child: Text(
            '선택',
            style: TextStyle(
              color: FigmaColors.gray100,
              fontSize: 12,
              fontFamily: 'SUIT',
              fontWeight: FontWeight.w400,
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
      style: const TextStyle(
        color: FigmaColors.white,
        fontSize: 16,
        fontFamily: 'SUIT',
        fontWeight: FontWeight.w400,
        height: 1.42,
      ),
      decoration: InputDecoration(
        counterText: '',
        filled: true,
        fillColor: FigmaColors.gray600,
        hintText: '입력해주세요.(최대 50자)',
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
    );
  }
}

class _CompleteButton extends StatelessWidget {
  const _CompleteButton({required this.onPressed});

  final VoidCallback onPressed;

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
          color: FigmaColors.primary100,
          borderRadius: BorderRadius.circular(16),
        ),
        child: const Text(
          '입력 완료',
          style: TextStyle(
            color: FigmaColors.black,
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
