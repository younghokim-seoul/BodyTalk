import 'package:bodytalk/presentation/widget/logo/body_talk_logo.dart';
import 'package:bodytalk/presentation/util/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isStudent = true;

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
                        _buildTextField('ID', obscureText: false),
                        const Gap(16),
                        _buildTextField('Password', obscureText: true),
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

  Widget _buildToggle() {
    return Center(
      child: Container(
        width: 240,
        height: 48,
        decoration: BoxDecoration(
          color: AppColors.gray100,
          borderRadius: BorderRadius.circular(24),
          boxShadow: const [
            BoxShadow(
              color: AppColors.black06,
              offset: Offset(0, 2),
              blurRadius: 4,
              spreadRadius: 0,
              blurStyle: BlurStyle.inner,
            ),
          ],
        ),
        child: Stack(
          children: [
            AnimatedPositioned(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
              left: isStudent ? 4 : 120,
              top: 4,
              bottom: 4,
              child: Container(
                width: 116,
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      color: AppColors.black12,
                      blurRadius: 2,
                      offset: Offset(0, 1),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () => setState(() => isStudent = true),
                    behavior: HitTestBehavior.opaque,
                    child: Center(
                      child: Text(
                        'Student',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: isStudent
                              ? AppColors.gray800
                              : AppColors.gray500,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () => setState(() => isStudent = false),
                    behavior: HitTestBehavior.opaque,
                    child: Center(
                      child: Text(
                        'Coach',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: !isStudent
                              ? AppColors.gray800
                              : AppColors.gray500,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(String hint, {required bool obscureText}) {
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
          borderSide: const BorderSide(color: AppColors.primaryAccentSoft, width: 2),
        ),
      ),
    );
  }

  Widget _buildLoginButton() {
    return GestureDetector(
      onTap: () {},
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


