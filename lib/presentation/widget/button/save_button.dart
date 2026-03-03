import 'package:bounce_tapper/bounce_tapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../util/app_size.dart';

class SaveButton extends HookWidget {
  const SaveButton({super.key, required this.onSaveBtnTapped});

  final Function onSaveBtnTapped;

  @override
  Widget build(BuildContext context) {
    final isBtnActivate = useState(true);

    return BounceTapper(
      enable: isBtnActivate.value,
      highlightBorderRadius: BorderRadius.circular(12),
      child: Padding(
        padding: EdgeInsets.only(bottom: AppSize.bottomInset == 0 ? 16 : 0),
        child: FilledButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFFFAF738),
            foregroundColor: const Color(0xFF0F172A),
            elevation: 2,
            padding: const EdgeInsets.symmetric(vertical: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          onPressed: isBtnActivate.value
              ? () {
                  onSaveBtnTapped();
                }
              : null,
          child: Center(child: Text("저장하기")),
        ),
      ),
    );
  }
}
