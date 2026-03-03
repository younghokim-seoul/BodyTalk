import 'package:bodytalk/presentation/widget/button/save_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart' show Gap;

class PlanTabView extends HookWidget {
  const PlanTabView({super.key});

  @override
  Widget build(BuildContext context) {
    final recognitionController = useTextEditingController();
    final motivationController = useTextEditingController();
    final actionController = useTextEditingController();
    final contextPlanController = useTextEditingController();

    return ListView(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 48),
      children: [
        _PlanSection(
          title: '인지 계획',
          hintText: 'What do you want to understand this week?',
          controller: recognitionController,
        ),
        const Gap(24),

        _PlanSection(
          title: '동기 계획',
          hintText: 'What is your goal or reason for moving this week?',
          controller: motivationController,
        ),
        const Gap(24),

        _PlanSection(
          title: '행동 계획',
          hintText: 'How will you practice or what actions will you take?',
          controller: actionController,
        ),
        const Gap(24),

        _PlanSection(
          title: '맥락 계획',
          hintText: 'When, where, and in what environment will you practice?',
          controller: contextPlanController,
        ),
        const Gap(32),
        SaveButton(
          onSaveBtnTapped: () {
            FocusScope.of(context).unfocus();
          },
        ),
      ],
    );
  }
}

class _PlanSection extends StatelessWidget {
  final String title;
  final String hintText;
  final TextEditingController controller;

  const _PlanSection({
    required this.title,
    required this.hintText,
    required this.controller,
  });

  static final _enabledBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(12),
    borderSide: const BorderSide(color: Color(0xFFE2E8F0)),
  );

  static final _focusedBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(12),
    borderSide: const BorderSide(color: Color(0xFFFAF738), width: 2.0),
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              width: 8,
              height: 8,
              decoration: const BoxDecoration(
                color: Color(0xFFFAF738),
                shape: BoxShape.circle,
              ),
            ),
            const SizedBox(width: 8),
            Text(
              title,
              style: const TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w700,
                color: Color(0xFF0F172A),
              ),
            ),
          ],
        ),
        Gap(8),
        TextFormField(
          controller: controller,
          maxLines: 5,
          minLines: 2,
          keyboardType: TextInputType.multiline,
          textInputAction: TextInputAction.newline,
          style: const TextStyle(fontSize: 14.0, color: Color(0xFF0F172A)),
          cursorColor: const Color(0xFFFAF738),
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: const TextStyle(
              color: Color(0xFF94A3B8),
              fontSize: 14.0,
            ),
            filled: true,
            fillColor: const Color(0xFFF8FAFC),
            contentPadding: const EdgeInsets.all(16),
            enabledBorder: _enabledBorder,
            focusedBorder: _focusedBorder,
          ),
        ),
      ],
    );
  }
}
