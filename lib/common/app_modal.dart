import 'package:flutter/material.dart';

import '../config/theme/app_text_styles.dart';
import '../config/theme/figma_colors.dart';

/// 제목, 설명, 버튼 텍스트를 바꿔 쓸 수 있는 공통 모달.
class AppModal extends StatelessWidget {
  const AppModal({
    super.key,
    required this.title,
    this.description,
    this.primaryButtonText,
    this.secondaryButtonText,
    this.onPrimaryPressed,
    this.onSecondaryPressed,
    this.onClosePressed,
    this.width = 322,
    this.padding = const EdgeInsets.only(
      top: 16,
      left: 16,
      right: 16,
      bottom: 18,
    ),
    this.backgroundColor = FigmaColors.gray400,
    this.titleColor = FigmaColors.white,
    this.descriptionColor = FigmaColors.gray100,
    this.primaryButtonColor = FigmaColors.primary100,
    this.secondaryButtonColor = FigmaColors.white,
    this.buttonTextColor = FigmaColors.black,
    this.borderRadius = 12,
    this.showCloseButton = true,
  });

  /// 모달 제목
  final String title;

  /// 모달 설명
  final String? description;

  /// 오른쪽 주요 버튼 텍스트
  final String? primaryButtonText;

  /// 왼쪽 보조 버튼 텍스트
  final String? secondaryButtonText;

  /// 오른쪽 주요 버튼 클릭 이벤트
  final VoidCallback? onPrimaryPressed;

  /// 왼쪽 보조 버튼 클릭 이벤트
  final VoidCallback? onSecondaryPressed;

  /// 닫기 버튼 클릭 이벤트
  final VoidCallback? onClosePressed;

  /// 모달 너비
  final double width;

  /// 모달 안쪽 여백
  final EdgeInsetsGeometry padding;

  /// 모달 배경색
  final Color backgroundColor;

  /// 제목 색상
  final Color titleColor;

  /// 설명 색상
  final Color descriptionColor;

  /// 오른쪽 주요 버튼 배경색
  final Color primaryButtonColor;

  /// 왼쪽 보조 버튼 배경색
  final Color secondaryButtonColor;

  /// 버튼 텍스트 색상
  final Color buttonTextColor;

  /// 모달 둥근 정도
  final double borderRadius;

  /// 닫기 버튼 노출 여부
  final bool showCloseButton;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: padding,
      decoration: ShapeDecoration(
        color: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          if (showCloseButton) _CloseButton(onPressed: onClosePressed),
          const SizedBox(height: 2),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              _ModalTextContent(
                title: title,
                description: description,
                titleColor: titleColor,
                descriptionColor: descriptionColor,
              ),
              if (_hasButton) ...<Widget>[
                const SizedBox(height: 25),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    if (secondaryButtonText != null)
                      _ModalButton(
                        text: secondaryButtonText!,
                        backgroundColor: secondaryButtonColor,
                        textColor: buttonTextColor,
                        onPressed: onSecondaryPressed,
                      ),
                    if (secondaryButtonText != null &&
                        primaryButtonText != null)
                      const SizedBox(width: 10),
                    if (primaryButtonText != null)
                      _ModalButton(
                        text: primaryButtonText!,
                        backgroundColor: primaryButtonColor,
                        textColor: buttonTextColor,
                        onPressed: onPrimaryPressed,
                      ),
                  ],
                ),
              ],
            ],
          ),
        ],
      ),
    );
  }

  bool get _hasButton {
    return primaryButtonText != null || secondaryButtonText != null;
  }
}

class _CloseButton extends StatelessWidget {
  const _CloseButton({
    this.onPressed,
  });

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: 24,
      child: IconButton(
        padding: EdgeInsets.zero,
        constraints: const BoxConstraints(),
        icon: const Icon(
          Icons.close,
          color: FigmaColors.white,
          size: 24,
        ),
        onPressed: onPressed,
      ),
    );
  }
}

class _ModalTextContent extends StatelessWidget {
  const _ModalTextContent({
    required this.title,
    required this.description,
    required this.titleColor,
    required this.descriptionColor,
  });

  final String title;
  final String? description;
  final Color titleColor;
  final Color descriptionColor;

  @override
  Widget build(BuildContext context) {
    final String? body = description;

    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          SizedBox(
            width: 290,
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: AppTextStyles.headlineLarge.copyWith(
                color: titleColor,
                letterSpacing: -0.40,
              ),
            ),
          ),
          if (body != null) ...<Widget>[
            const SizedBox(height: 7),
            SizedBox(
              width: 290,
              child: Text(
                body,
                textAlign: TextAlign.center,
                style: AppTextStyles.bodySmall.copyWith(
                  color: descriptionColor,
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }
}

class _ModalButton extends StatelessWidget {
  const _ModalButton({
    required this.text,
    required this.backgroundColor,
    required this.textColor,
    this.onPressed,
  });

  final String text;
  final Color backgroundColor;
  final Color textColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onPressed,
      child: Container(
        width: 140,
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: ShapeDecoration(
          color: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        alignment: Alignment.center,
        child: Text(
          text,
          style: AppTextStyles.buttonMedium.copyWith(color: textColor),
        ),
      ),
    );
  }
}
