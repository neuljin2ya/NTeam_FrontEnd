import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../common/app_button.dart';
import '../../../../common/app_input_field.dart' show AppInputField, AppInputFieldState;
import '../../../../common/app_top_bar.dart';
import '../../../../config/theme/app_semantic_colors.dart';
import '../../../../config/theme/app_text_styles.dart';
import '../../../../config/theme/figma_colors.dart';
import '../../../../router/app_router.dart';
import '../state/login_load_state.dart';
import '../viewmodel/login_view_model.dart';

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({super.key});

  @override
  ConsumerState<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  static const double _horizontalPadding = 16;
  static const double _titleFieldSpacing = 18;
  static const double _fieldTermsSpacing = 24;

  final TextEditingController _nicknameController = TextEditingController();
  bool _isLocationTermsAgreed = false;

  @override
  void initState() {
    super.initState();
    _nicknameController.addListener(_onNicknameChanged);
  }

  @override
  void dispose() {
    _nicknameController.removeListener(_onNicknameChanged);
    _nicknameController.dispose();
    super.dispose();
  }

  void _onNicknameChanged() {
    setState(() {});
  }

  Future<void> _onConfirmNickname() async {
    await ref.read(loginViewModelProvider.notifier).login(
          _nicknameController.text,
        );
  }

  @override
  Widget build(BuildContext context) {
    ref.listen<LoginLoadState>(loginViewModelProvider, (
      LoginLoadState? previous,
      LoginLoadState next,
    ) {
      next.whenOrNull(
        success: () => context.go(SGRoute.home.route),
        failure: (String message) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(message)),
          );
        },
      );
    });

    final LoginLoadState loadState = ref.watch(loginViewModelProvider);
    final bool isLoading = loadState is LoginLoadLoading;
    final double fieldWidth =
        MediaQuery.sizeOf(context).width - (_horizontalPadding * 2);
    final bool hasNickname = _nicknameController.text.trim().isNotEmpty;
    final bool canSubmit =
        hasNickname && _isLocationTermsAgreed && !isLoading;

    return Scaffold(
      backgroundColor: AppSemanticColors.backgroundPage,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            const AppTopBar(
              title: '닉네임 설정',
              leading: SizedBox(width: 24, height: 24),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: _horizontalPadding,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const SizedBox(height: 12),
                    Text(
                      '회원님의 닉네임을 알려주세요',
                      style: AppTextStyles.headlineLarge.copyWith(
                        color: AppSemanticColors.textPrimary,
                        letterSpacing: -0.4,
                      ),
                    ),
                    const SizedBox(height: _titleFieldSpacing),
                    AppInputField(
                      controller: _nicknameController,
                      hintText: '예) 파쿠르트',
                      width: fieldWidth,
                      state: isLoading
                          ? AppInputFieldState.disabled
                          : AppInputFieldState.enabled,
                    ),
                    const SizedBox(height: _fieldTermsSpacing),
                    _LocationTermsRow(
                      isAgreed: _isLocationTermsAgreed,
                      onTap: isLoading
                          ? null
                          : () {
                              setState(() {
                                _isLocationTermsAgreed = !_isLocationTermsAgreed;
                              });
                            },
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 16),
              child: AppButton(
                text: isLoading ? '처리 중...' : '이 닉네임으로 할래요',
                width: fieldWidth,
                onPressed: canSubmit ? _onConfirmNickname : null,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _LocationTermsRow extends StatelessWidget {
  const _LocationTermsRow({
    required this.isAgreed,
    required this.onTap,
  });

  final bool isAgreed;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: 24,
            height: 24,
            decoration: BoxDecoration(
              color: isAgreed ? FigmaColors.primaryMain : Colors.transparent,
              borderRadius: BorderRadius.circular(4),
              border: isAgreed
                  ? null
                  : Border.all(color: FigmaColors.gray200),
            ),
            child: isAgreed
                ? const Icon(
                    Icons.check,
                    size: 16,
                    color: FigmaColors.black,
                  )
                : null,
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              '서비스 이용을 위해 위치 약관에 동의해주세요',
              style: AppTextStyles.labelMedium.copyWith(
                color: AppSemanticColors.textPrimary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
