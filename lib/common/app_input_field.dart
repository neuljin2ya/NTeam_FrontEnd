import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../config/theme/figma_colors.dart';

enum AppInputFieldState {
  enabled,
  focused,
  disabled,
  error,
}

class AppInputField extends StatelessWidget {
  const AppInputField({
    super.key,
    this.controller,
    required this.hintText,
    this.width = 335,
    this.svgIcon,
    this.state = AppInputFieldState.enabled,
    this.onChanged,
    this.obscureText = false,
  });

  final TextEditingController? controller;

  /// placeholder 텍스트
  final String hintText;

  /// input width
  final double width;

  /// svg icon 경로
  ///
  /// 예시:
  /// assets/icons/ic_calendar.svg
  final String? svgIcon;

  /// 상태값
  final AppInputFieldState state;

  final ValueChanged<String>? onChanged;

  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    final bool isDisabled = state == AppInputFieldState.disabled;

    return SizedBox(
      width: width,
      child: TextField(
        controller: controller,
        enabled: !isDisabled,
        onChanged: onChanged,
        obscureText: obscureText,
        cursorColor: _textColor,

        /// 입력 텍스트 스타일
        style: TextStyle(
          color: _textColor,
          fontSize: 16,
          fontFamily: 'SUIT',
          fontWeight: FontWeight.w400,
          height: 1.42,
        ),

        decoration: InputDecoration(
          filled: true,
          fillColor: _backgroundColor,

          hintText: hintText,

          /// placeholder 스타일
          hintStyle: TextStyle(
            color: _hintColor,
            fontSize: 16,
            fontFamily: 'SUIT',
            fontWeight: FontWeight.w400,
            height: 1.42,
          ),

          /// svg icon
          prefixIcon: svgIcon == null
              ? null
              : Padding(
                  padding: const EdgeInsets.only(
                    left: 12,
                    right: 10,
                  ),
                  child: SvgPicture.asset(
                    svgIcon!,

                    width: 24,
                    height: 24,

                    /// 상태별 아이콘 색상 변경
                    colorFilter: ColorFilter.mode(
                      _iconColor,
                      BlendMode.srcIn,
                    ),
                  ),
                ),

          prefixIconConstraints: const BoxConstraints(
            minWidth: 24,
            minHeight: 24,
          ),

          contentPadding: const EdgeInsets.all(12),

          border: _border,
          enabledBorder: _border,
          focusedBorder: _border,
          disabledBorder: _border,
          errorBorder: _border,
          focusedErrorBorder: _border,
        ),
      ),
    );
  }

  // ---------------------------------------------------------------------------
  // background color
  // ---------------------------------------------------------------------------

  Color get _backgroundColor {
    switch (state) {
      case AppInputFieldState.enabled:
      case AppInputFieldState.focused:
      case AppInputFieldState.error:
        return FigmaColors.gray600;

      case AppInputFieldState.disabled:
        return FigmaColors.gray500;
    }
  }

  // ---------------------------------------------------------------------------
  // text color
  // ---------------------------------------------------------------------------

  Color get _textColor {
    switch (state) {
      case AppInputFieldState.error:
        return FigmaColors.error;

      case AppInputFieldState.disabled:
        return FigmaColors.gray200;

      case AppInputFieldState.enabled:
      case AppInputFieldState.focused:
        return FigmaColors.white;
    }
  }

  // ---------------------------------------------------------------------------
  // hint color
  // ---------------------------------------------------------------------------

  Color get _hintColor {
    switch (state) {
      case AppInputFieldState.error:
        return FigmaColors.error;

      case AppInputFieldState.disabled:
      case AppInputFieldState.enabled:
      case AppInputFieldState.focused:
        return FigmaColors.gray100;
    }
  }

  // ---------------------------------------------------------------------------
  // icon color
  // ---------------------------------------------------------------------------

  Color get _iconColor {
    switch (state) {
      case AppInputFieldState.error:
        return FigmaColors.error;

      case AppInputFieldState.disabled:
        return FigmaColors.gray200;

      case AppInputFieldState.enabled:
      case AppInputFieldState.focused:
        return FigmaColors.white;
    }
  }

  // ---------------------------------------------------------------------------
  // border
  // ---------------------------------------------------------------------------

  OutlineInputBorder get _border {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: _borderSide,
    );
  }

  BorderSide get _borderSide {
    switch (state) {
      case AppInputFieldState.focused:
        return const BorderSide(color: FigmaColors.gray200);

      case AppInputFieldState.error:
        return const BorderSide(color: FigmaColors.error);

      case AppInputFieldState.enabled:
      case AppInputFieldState.disabled:
        return BorderSide.none;
    }
  }
}
