import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class EasyLoadingBackButtonGuard extends StatelessWidget {
  const EasyLoadingBackButtonGuard({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BackButtonListener(
      onBackButtonPressed: () async => EasyLoading.isShow,
      child: child,
    );
  }
}
