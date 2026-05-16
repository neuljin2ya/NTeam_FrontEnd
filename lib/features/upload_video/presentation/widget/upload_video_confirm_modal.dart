import 'package:flutter/material.dart';

import '../../../../common/app_modal.dart';

class UploadVideoConfirmModal extends StatelessWidget {
  const UploadVideoConfirmModal({
    super.key,
    this.onCancelPressed,
    this.onUploadPressed,
    this.onClosePressed,
  });

  final VoidCallback? onCancelPressed;
  final VoidCallback? onUploadPressed;
  final VoidCallback? onClosePressed;

  @override
  Widget build(BuildContext context) {
    return AppModal(
      title: '영상을 업로드 하시겠어요?',
      description: '한 번 등록하면 수정이 어려워요',
      secondaryButtonText: '나중에 할게요',
      primaryButtonText: '업로드 하기',
      onSecondaryPressed: onCancelPressed,
      onPrimaryPressed: onUploadPressed,
      onClosePressed: onClosePressed,
    );
  }
}
