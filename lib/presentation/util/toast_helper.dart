import 'package:bodytalk/presentation/util/app_colors.dart';
import 'package:bodytalk/router/router.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ToastHelper {
  ToastHelper._();

  static final FToast _fToast = FToast();

  static void show(
    {
    required String message,
    ToastGravity gravity = ToastGravity.BOTTOM,
    Duration duration = const Duration(seconds: 2),
  }) {
    final overlayContext = rootNavigatorKey.currentState?.overlay?.context;
    if (overlayContext == null) return;

    _fToast.init(overlayContext);

    _fToast.showToast(
      gravity: gravity,
      toastDuration: duration,
      child: _ToastBody(
        message: message,
        backgroundColor: AppColors.gray800,
      ),
    );
  }
}

class _ToastBody extends StatelessWidget {
  const _ToastBody({
    required this.message,
    required this.backgroundColor,
  });

  final String message;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        message,
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: AppColors.white,
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
