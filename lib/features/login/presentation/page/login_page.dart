import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../common/app_button.dart';
import '../../../../common/app_input_field.dart' show AppInputField, AppInputFieldState;
import '../../../../common/data/providers/device_token_storage_provider.dart';
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
  static const double _contentWidth = 310;
  static const double _sectionSpacing = 14;

  final TextEditingController _nicknameController = TextEditingController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(deviceTokenStorageProvider).clear();
    });
  }

  @override
  void dispose() {
    _nicknameController.dispose();
    super.dispose();
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

    return Scaffold(
      backgroundColor: FigmaColors.black,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: SizedBox(
              width: _contentWidth,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    '회원님의 닉네임을 알려주세요',
                    textAlign: TextAlign.center,
                    style: AppTextStyles.labelLarge.copyWith(
                      color: FigmaColors.white,
                      letterSpacing: -0.16,
                    ),
                  ),
                  const SizedBox(height: _sectionSpacing),
                  AppInputField(
                    controller: _nicknameController,
                    hintText: '닉네임',
                    width: _contentWidth,
                    state: isLoading
                        ? AppInputFieldState.disabled
                        : AppInputFieldState.enabled,
                  ),
                  const SizedBox(height: _sectionSpacing),
                  AppButton(
                    text: isLoading ? '처리 중...' : '이 닉네임으로 할래요',
                    width: _contentWidth,
                    size: AppButtonSize.small,
                    style: AppButtonStyle.gray,
                    onPressed: isLoading ? null : _onConfirmNickname,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
