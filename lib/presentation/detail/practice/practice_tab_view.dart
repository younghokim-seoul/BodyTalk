import 'package:bodytalk/data/remote/model/learning/learning_detail_model.dart';
import 'package:bodytalk/di/injection_container.dart';
import 'package:bodytalk/presentation/detail/component/input_section.dart';
import 'package:bodytalk/presentation/detail/practice/practice_tab_view_model.dart';
import 'package:bodytalk/presentation/util/toast_helper.dart';
import 'package:bodytalk/presentation/widget/button/save_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart' show Gap;

class PracticeTabView extends HookWidget {
  final LearningDetailModel detail;
  final int learningId;
  final int curriculumId;
  final PracticeTabViewModel _viewModel = it<PracticeTabViewModel>();

  PracticeTabView({
    super.key,
    required this.detail,
    required this.learningId,
    required this.curriculumId,
  });

  @override
  Widget build(BuildContext context) {
    useAutomaticKeepAlive();
    useEffect(() {
      final subscription = _viewModel.event.listen((event) {
        event.when(
          toastMessage: (message) => ToastHelper.show(message: message),
        );
      });

      return () {
        subscription.cancel();
        _viewModel.disposeAll();
      };
    }, [_viewModel]);

    final practicePlaceholders = detail.curriculum.placeholders.practice;
    final practiceTitles = detail.curriculum.titles?.practice;
    final existingPractice = detail.practice;

    final recognitionController = useTextEditingController();
    final motivationController = useTextEditingController();
    final actionController = useTextEditingController();
    final contextPlanController = useTextEditingController();
    final journalController = useTextEditingController(
      text: existingPractice?.content,
    );

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
          descriptionText: practiceTitles?.recognition,
          hintText: practicePlaceholders.recognition,
          controller: recognitionController,
        ),
        const Gap(24),
        InputSection(
          title: '동기 계획',
          descriptionText: practiceTitles?.motive,
          hintText: practicePlaceholders.motive,
          controller: motivationController,
        ),
        const Gap(24),
        InputSection(
          title: '행동 계획',
          descriptionText: practiceTitles?.active,
          hintText: practicePlaceholders.active,
          controller: actionController,
        ),
        const Gap(24),
        InputSection(
          title: '맥락 계획',
          descriptionText: practiceTitles?.context,
          hintText: practicePlaceholders.context,
          controller: contextPlanController,
        ),
        const Gap(32),
        SaveButton(
          onSaveBtnTapped: () async {
            FocusScope.of(context).unfocus();
            await _viewModel.savePractice(
              learningId: learningId,
              curriculumId: curriculumId,
              content: journalController.text.trim(),
              recognition: recognitionController.text.trim(),
              motive: motivationController.text.trim(),
              active: actionController.text.trim(),
              context: contextPlanController.text.trim(),
            );
          },
        ),
      ],
    );
  }
}
