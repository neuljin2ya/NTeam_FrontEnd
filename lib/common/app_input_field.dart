import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../config/theme/app_text_styles.dart';
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

  static const BorderRadius _borderRadius = BorderRadius.all(Radius.circular(8));

  static const BorderSide _focusBorderSide = BorderSide(color: FigmaColors.gray200);

  static const BorderSide _errorBorderSide = BorderSide(color: FigmaColors.error);

  static const BorderSide _noBorderSide = BorderSide.none;

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

        style: AppTextStyles.bodyLarge.copyWith(color: _textColor),

        decoration: InputDecoration(
          filled: true,
          fillColor: _backgroundColor,

          hintText: hintText,

          hintStyle: AppTextStyles.bodyLarge.copyWith(color: _hintColor),

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

          border: _outlineBorder(_enabledBorderSide),
          enabledBorder: _outlineBorder(_enabledBorderSide),
          focusedBorder: _outlineBorder(_focusedBorderSide),
          disabledBorder: _outlineBorder(_disabledBorderSide),
          errorBorder: _outlineBorder(_errorBorderSide),
          focusedErrorBorder: _outlineBorder(_errorBorderSide),
        ),
      ),
    );
  }

  OutlineInputBorder _outlineBorder(BorderSide side) {
    return OutlineInputBorder(
      borderRadius: _borderRadius,
      borderSide: side,
    );
  }

  BorderSide get _enabledBorderSide {
    if (state == AppInputFieldState.error) {
      return _errorBorderSide;
    }
    if (state == AppInputFieldState.focused) {
      return _focusBorderSide;
    }
    return _noBorderSide;
  }

  BorderSide get _focusedBorderSide {
    if (state == AppInputFieldState.error) {
      return _errorBorderSide;
    }
    return _focusBorderSide;
  }

  BorderSide get _disabledBorderSide => _noBorderSide;

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
}
