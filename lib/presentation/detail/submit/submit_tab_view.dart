import 'dart:io';

import 'package:bodytalk/data/remote/network_service.dart';
import 'package:bodytalk/data/remote/model/learning/learning_detail_model.dart';
import 'package:bodytalk/di/injection_container.dart';
import 'package:bodytalk/presentation/detail/component/input_section.dart';
import 'package:bodytalk/presentation/detail/submit/submit_video_preview.dart';
import 'package:bodytalk/presentation/detail/submit/submit_tab_view_model.dart';
import 'package:bodytalk/presentation/util/app_colors.dart';
import 'package:bodytalk/presentation/util/toast_helper.dart';
import 'package:bodytalk/presentation/util/video_picker_helper.dart';
import 'package:bounce_tapper/bounce_tapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart' show Gap;

class SubmitTabView extends HookWidget {
  final LearningDetailModel detail;
  final int learningId;
  final int curriculumId;
  final SubmitTabViewModel _viewModel = it<SubmitTabViewModel>();

  SubmitTabView({
    super.key,
    required this.detail,
    required this.learningId,
    required this.curriculumId,
  });

  @override
  Widget build(BuildContext context) {
    useAutomaticKeepAlive();
    final currentSubmit = useState<SubmitModel?>(detail.submit);

    useEffect(() {
      currentSubmit.value = detail.submit;
      return null;
    }, [detail.submit?.submitId, learningId, curriculumId]);

    useEffect(() {
      final subscription = _viewModel.event.listen((event) {
        event.when(
          toastMessage: (message) {
            EasyLoading.dismiss();
            ToastHelper.show(message: message);
          },
        );
      });

      return () {
        subscription.cancel();
        _viewModel.disposeAll();
      };
    }, [_viewModel]);

    final existingSubmit = currentSubmit.value;
    final serverVideoUrl = _resolveServerVideoUrl(existingSubmit?.video);
    final coachFeedback = existingSubmit?.answer?.trim();
    final hasCoachFeedback = coachFeedback != null && coachFeedback.isNotEmpty;
    final questionController = useTextEditingController(
      text: existingSubmit?.question,
    );
    final pickedVideo = useState<File?>(null);
    final pickedVideoName = pickedVideo.value?.path
        .split(Platform.pathSeparator)
        .last;

    useEffect(() {
      final nextQuestion = currentSubmit.value?.question ?? '';
      if (questionController.text == nextQuestion) return null;

      questionController.value = TextEditingValue(
        text: nextQuestion,
        selection: TextSelection.collapsed(offset: nextQuestion.length),
      );
      return null;
    }, [currentSubmit.value?.submitId, currentSubmit.value?.question]);

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        if (serverVideoUrl != null) ...[
          SubmitVideoPreview(videoUrl: serverVideoUrl),
          const Gap(24),
        ],
        const Text(
          '연습 영상 업로드',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: AppColors.slate900,
          ),
        ),
        const Gap(12),
        _buildUploadBox(pickedVideo, pickedVideoName),
        const Gap(24),
        InputSection(
          title: '코치에게 질문 하기',
          hintText: '연습하면서 생긴 궁금한 점이나 피드백을 받고 싶은 내용을 적어보세요.',
          controller: questionController,
          maxLines: 5,
          minLines: 5,
          trailingTitle: Text(
            'Optional'.toUpperCase(),
            style: const TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w500,
              color: AppColors.slate400,
              letterSpacing: 1.0,
            ),
          ),
          suffixIcon: const Icon(Icons.edit_note, color: AppColors.slate300),
        ),
        if (hasCoachFeedback) ...[
          const Gap(24),
          _buildCoachFeedbackView(coachFeedback),
        ],
        const Gap(24),
        BounceTapper(
          child: ElevatedButton(
            onPressed: () async {
              FocusScope.of(context).unfocus();
              await EasyLoading.show();
              final submitted = await _viewModel.submitAssignment(
                learningId: learningId,
                curriculumId: curriculumId,
                question: questionController.text,
                video: pickedVideo.value,
              );
              if (!context.mounted || submitted == null) return;

              currentSubmit.value = submitted;
              final submittedVideoUrl = _resolveServerVideoUrl(submitted.video);
              if (submittedVideoUrl != null) {
                pickedVideo.value = null;
              }
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primaryAccent,
              foregroundColor: AppColors.slate900,
              elevation: 8,
              shadowColor: Colors.black.withValues(alpha: 0.1),
              padding: const EdgeInsets.symmetric(vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.send, size: 20),
                Gap(8),
                Text(
                  '제출하기',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
        const Gap(16),
      ],
    );
  }

  Widget _buildUploadBox(
    ValueNotifier<File?> pickedVideo,
    String? pickedVideoName,
  ) {
    final hasPickedVideo = pickedVideo.value != null;

    Future<void> handlePickVideo() async {
      final video = await VideoPickerHelper.pickVideo();
      if (video != null) {
        pickedVideo.value = video;
      }
    }

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: AppColors.slate50,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.slate200, width: 2),
      ),
      child: Column(
        children: [
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: AppColors.primaryAccent.withValues(alpha: 0.2),
              shape: BoxShape.circle,
            ),
            child: Icon(
              hasPickedVideo ? Icons.video_file_rounded : Icons.upload_rounded,
              color: hasPickedVideo ? Colors.green : AppColors.slate900,
            ),
          ),
          const Gap(12),
          Text(
            hasPickedVideo
                ? '$pickedVideoName 파일이 선택되었습니다.'
                : '연습 영상을 선택해 업로드해 주세요.',
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: AppColors.slate600,
            ),
          ),
          const Gap(8),
          const Text(
            '선택한 영상은 아래 미리보기에서 확인할 수 있습니다.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: AppColors.slate400,
            ),
          ),
          const Gap(16),
          ElevatedButton(
            onPressed: handlePickVideo,
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primaryAccent,
              foregroundColor: AppColors.slate900,
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              elevation: 2,
              shadowColor: Colors.black.withValues(alpha: 0.1),
            ),
            child: const Text(
              '영상 업로드',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ),
          if (hasPickedVideo) ...[
            const Gap(24),
            SubmitSelectedVideoPreview(videoFile: pickedVideo.value!),
          ],
        ],
      ),
    );
  }

  Widget _buildCoachFeedbackView(String answer) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.slate50,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.slate200),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            '코치의 피드백',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: AppColors.slate900,
            ),
          ),
          const Gap(12),
          Text(
            answer,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              height: 1.6,
              color: AppColors.slate700,
            ),
          ),
        ],
      ),
    );
  }

  String? _resolveServerVideoUrl(String? rawVideoUrl) {
    if (rawVideoUrl == null) return null;

    final trimmedVideoUrl = rawVideoUrl.trim();
    if (trimmedVideoUrl.isEmpty) return null;

    final videoUri = Uri.tryParse(trimmedVideoUrl);
    if (videoUri != null && videoUri.hasScheme) {
      return videoUri.toString();
    }

    final baseUri = Uri.parse(it<NetworkService>().baseUrl);
    return baseUri.resolve(trimmedVideoUrl).toString();
  }
}
