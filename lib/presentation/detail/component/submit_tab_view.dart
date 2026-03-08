import 'dart:io';

import 'package:bodytalk/data/remote/model/learning/learning_detail_model.dart';
import 'package:bodytalk/presentation/detail/component/input_section.dart';
import 'package:bodytalk/presentation/util/app_colors.dart';
import 'package:bodytalk/presentation/util/video_picker_helper.dart';
import 'package:bounce_tapper/bounce_tapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart' show Gap;

class SubmitTabView extends HookWidget {
  final LearningDetailModel detail;

  const SubmitTabView({super.key, required this.detail});

  @override
  Widget build(BuildContext context) {
    useAutomaticKeepAlive();

    final existingSubmit = detail.submit;
    final questionController = useTextEditingController(
      text: existingSubmit?.question,
    );
    final pickedVideo = useState<File?>(null);

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        const Text(
          '연습 영상 업로드',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: AppColors.slate900,
          ),
        ),
        const Gap(12),
        _buildUploadBox(context, existingSubmit?.video, pickedVideo),
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

        const Gap(24),

        // Submit Button
        BounceTapper(
          child: ElevatedButton(
            onPressed: () {
              FocusScope.of(context).unfocus();
              // TODO: Submit assignment with pickedVideo.value
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primaryAccent,
              foregroundColor: AppColors.slate900,
              elevation: 8,
              shadowColor: Colors.black.withOpacity(0.1),
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
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            "코치가 48시간 이내에 과제를 확인하고 피드백을 드릴 예정입니다. 피드백이 완료되면 알림을 보내드릴게요.",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 11,
              color: AppColors.slate400,
              height: 1.5,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildUploadBox(BuildContext context, String? serverVideoUrl, ValueNotifier<File?> pickedVideo) {
    final hasVideo = serverVideoUrl != null || pickedVideo.value != null;

    Future<void> handlePickVideo() async {
      final video = await VideoPickerHelper.pickVideo();
      if (video != null) {
        pickedVideo.value = video;
      }
    }

    return InkWell(
      onTap: handlePickVideo,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(32),
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
                color: AppColors.primaryAccent.withOpacity(0.2),
                shape: BoxShape.circle,
              ),
              child: Icon(
                hasVideo ? Icons.check_circle : Icons.videocam,
                color: hasVideo ? Colors.green : AppColors.slate900,
              ),
            ),
            const Gap(12),
            Text(
              hasVideo
                  ? (pickedVideo.value != null
                      ? '새로운 영상이 선택되었습니다.'
                      : '기존 영상이 업로드되어 있습니다.')
                  : '연습 영상을 업로드해 주세요.',
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: AppColors.slate600,
              ),
            ),
            const Gap(16),
            ElevatedButton(
              onPressed: handlePickVideo,
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primaryAccent,
                foregroundColor: AppColors.slate900,
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                elevation: 2,
                shadowColor: Colors.black.withOpacity(0.1),
              ),
              child: Text(
                hasVideo ? '영상 변경' : '영상 업로드',
                style:
                    const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
