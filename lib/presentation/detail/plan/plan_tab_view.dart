import 'package:bodytalk/data/remote/model/learning/learning_detail_model.dart';
import 'package:bodytalk/di/injection_container.dart';
import 'package:bodytalk/presentation/detail/component/input_section.dart';
import 'package:bodytalk/presentation/detail/plan/plan_tab_view_model.dart';
import 'package:bodytalk/presentation/util/toast_helper.dart';
import 'package:bodytalk/presentation/widget/button/save_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:gap/gap.dart' show Gap;

class PlanTabView extends HookWidget {
  final LearningDetailModel detail;
  final int learningId;
  final int curriculumId;
  final PlanTabViewModel _viewModel = it<PlanTabViewModel>();

  PlanTabView({
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

    final planPlaceholders = detail.curriculum.placeholders.plan;
    final existingPlan = detail.plan;

    final recognitionController = useTextEditingController(
      text: existingPlan?.recognition,
    );
    final motivationController = useTextEditingController(
      text: existingPlan?.motive,
    );
    final actionController = useTextEditingController(
      text: existingPlan?.active,
    );
    final contextPlanController = useTextEditingController(
      text: existingPlan?.context,
    );

    return ListView(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 48),
      children: [
        InputSection(
          title: '인지 계획',
          hintText: planPlaceholders.recognition,
          controller: recognitionController,
        ),
        const Gap(24),
        InputSection(
          title: '동기 계획',
          hintText: planPlaceholders.motive,
          controller: motivationController,
        ),
        const Gap(24),
        InputSection(
          title: '행동 계획',
          hintText: planPlaceholders.active,
          controller: actionController,
        ),
        const Gap(24),
        InputSection(
          title: '맥락 계획',
          hintText: planPlaceholders.context,
          controller: contextPlanController,
        ),
        const Gap(32),
        SaveButton(
          onSaveBtnTapped: () async {
            FocusScope.of(context).unfocus();
            await _viewModel.savePlan(
              learningId: learningId,
              curriculumId: curriculumId,
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
