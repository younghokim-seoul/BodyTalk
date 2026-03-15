import 'package:bodytalk/presentation/util/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class InputSection extends StatelessWidget {
  final String title;
  final String? descriptionText;
  final String hintText;
  final TextEditingController controller;
  final int maxLines;
  final int minLines;
  final Widget? trailingTitle;
  final Widget? suffixIcon;

  const InputSection({
    super.key,
    required this.title,
    this.descriptionText,
    required this.hintText,
    required this.controller,
    this.maxLines = 5,
    this.minLines = 2,
    this.trailingTitle,
    this.suffixIcon,
  });

  static final _enabledBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(12),
    borderSide: const BorderSide(color: AppColors.slate200),
  );

  static final _focusedBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(12),
    borderSide: const BorderSide(color: AppColors.primaryAccent, width: 2.0),
  );

  @override
  Widget build(BuildContext context) {
    final hasDescription =
        descriptionText != null && descriptionText!.trim().isNotEmpty;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  width: 8,
                  height: 8,
                  decoration: const BoxDecoration(
                    color: AppColors.primaryAccent,
                    shape: BoxShape.circle,
                  ),
                ),
                const SizedBox(width: 8),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w700,
                    color: AppColors.slate900,
                  ),
                ),
              ],
            ),
            ?trailingTitle,
          ],
        ),
        if (hasDescription) ...[
          const Gap(8),
          Text(
            descriptionText!,
            style: const TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.w500,
              height: 1.5,
              color: AppColors.slate600,
            ),
          ),
        ],
        const Gap(8),
        Stack(
          children: [
            TextFormField(
              controller: controller,
              maxLines: maxLines,
              minLines: minLines,
              keyboardType: TextInputType.multiline,
              textInputAction: TextInputAction.newline,
              style: const TextStyle(fontSize: 14.0, color: AppColors.slate900),
              cursorColor: AppColors.primaryAccent,
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: const TextStyle(
                  color: AppColors.slate400,
                  fontSize: 14.0,
                ),
                filled: true,
                fillColor: AppColors.white,
                contentPadding: const EdgeInsets.all(16),
                enabledBorder: _enabledBorder,
                focusedBorder: _focusedBorder,
              ),
            ),
            if (suffixIcon != null)
              Positioned(bottom: 12, right: 12, child: suffixIcon!),
          ],
        ),
      ],
    );
  }
}
