import 'package:bodytalk/data/remote/model/learning/learning_detail_model.dart';
import 'package:bodytalk/presentation/detail/component/input_section.dart';
import 'package:bodytalk/presentation/widget/button/save_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart' show Gap;

class PracticeTabView extends HookWidget {
  final LearningDetailModel detail;

  const PracticeTabView({
    super.key,
    required this.detail,
  });

  @override
  Widget build(BuildContext context) {
    useAutomaticKeepAlive();

    final practicePlaceholders = detail.curriculum.placeholders.practice;
    final existingPractice = detail.practice;

    final recognitionController = useTextEditingController();
    final motivationController = useTextEditingController();
    final actionController = useTextEditingController();
    final contextPlanController = useTextEditingController();
    final journalController = useTextEditingController(text: existingPractice?.content);

    return ListView(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 48),
      children: [
        InputSection(
          title: '연습일지',
          hintText: '연습하며 느낀 점이나 변화를 기록해보세요.',
          controller: journalController,
          maxLines: 10,
        ),
        const Gap(24),
        InputSection(
          title: '인지 계획',
          hintText: practicePlaceholders.recognition,
          controller: recognitionController,
        ),
        const Gap(24),
        InputSection(
          title: '동기 계획',
          hintText: practicePlaceholders.motive,
          controller: motivationController,
        ),
        const Gap(24),
        InputSection(
          title: '행동 계획',
          hintText: practicePlaceholders.active,
          controller: actionController,
        ),
        const Gap(24),
        InputSection(
          title: '맥락 계획',
          hintText: practicePlaceholders.context,
          controller: contextPlanController,
        ),
        const Gap(32),
        SaveButton(
          onSaveBtnTapped: () {
            FocusScope.of(context).unfocus();
            // TODO: Call viewModel to save the practice journal
          },
        ),
      ],
    );
  }
}
