import 'dart:developer';
import 'dart:io';

import 'package:bodytalk/presentation/util/toast_helper.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

class VideoPickerHelper {
  VideoPickerHelper._();

  static final ImagePicker _picker = ImagePicker();

  ///
  /// 사진첩에서 비디오 파일을 선택합니다.
  ///
  static Future<File?> pickVideo() async {
    try {
      final XFile? videoSource = await _picker.pickVideo(
        source: ImageSource.gallery,
        maxDuration: const Duration(minutes: 10), // 필요에 따라 조절
      );

      if (videoSource != null) {
        return File(videoSource.path);
      }
      return null;
    } on PlatformException catch (e) {
      log('Video pick platform error: ${e.code}');
      if (e.code == 'photo_access_denied') {
        ToastHelper.show(message: '사진첩 접근 권한을 허용해주세요.');
      } else {
        ToastHelper.show(message: '영상을 불러오는 중 오류가 발생했습니다.');
      }
      return null;
    } catch (e) {
      log('Video pick error: $e');
      ToastHelper.show(message: '비디오를 선택하지 못했습니다. 다시 시도해주세요.');
      return null;
    }
  }
}
