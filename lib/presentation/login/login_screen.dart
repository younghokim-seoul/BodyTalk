import 'package:bodytalk/di/injection_container.dart';
import 'package:bodytalk/presentation/login/login_view_model.dart';
import 'package:bodytalk/presentation/util/app_colors.dart';
import 'package:bodytalk/presentation/util/toast_helper.dart';
import 'package:bodytalk/presentation/widget/logo/body_talk_logo.dart';
import 'package:bodytalk/router/router.dart';
import 'package:bounce_tapper/bounce_tapper.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var viewModel = it<LoginViewModel>();

  @override
  void initState() {
    super.initState();

    viewModel.event.listen((event) {
      event.when(
        loginSuccess: () => context.go(AppRouter.mainPath),
        toastMessage: (message) => ToastHelper.show(message: message),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.surface,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                child: IntrinsicHeight(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 32,
                      vertical: 40,
                    ),
                    child: Column(
                      children: [
                        const Gap(20),
                        BodyTalkLogo(),
                        const Gap(40),
                        _buildTextField(
                          'ID',
                          obscureText: false,
                          onChanged: viewModel.onChangedId,
                        ),
                        const Gap(16),
                        _buildTextField(
                          'Password',
                          obscureText: true,
                          onChanged: viewModel.onChangedPw,
                        ),
                        const Spacer(),
                        const Gap(40),
                        _buildLoginButton(),
                        const Gap(24),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildTextField(
    String hint, {
    required bool obscureText,
    required ValueChanged<String> onChanged,
  }) {
    return TextField(
      obscureText: obscureText,
      style: const TextStyle(fontSize: 16, color: AppColors.gray800),
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(color: AppColors.black38),
        filled: true,
        fillColor: AppColors.white,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 16,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: AppColors.gray200),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(
            color: AppColors.primaryAccentSoft,
            width: 2,
          ),
        ),
      ),
      onChanged: onChanged,
    );
  }

  Widget _buildLoginButton() {
    return BounceTapper(
      onTap: () {
         viewModel.login();
      },
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
          color: AppColors.primaryAccentSoft,
          borderRadius: BorderRadius.circular(999),
          boxShadow: const [
            BoxShadow(
              color: AppColors.primaryAccentShadow,
              offset: Offset(0, 4),
              blurRadius: 0,
            ),
          ],
        ),
        child: const Center(
          child: Text(
            'Login',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w900,
              color: AppColors.gray800,
              letterSpacing: 1.2,
            ),
          ),
        ),
      ),
    );
  }
}
