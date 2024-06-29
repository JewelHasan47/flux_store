import 'package:flutter/material.dart';
import 'package:flux_store/Utils/screen_configs.dart';

class VerificationCodePage extends StatefulWidget {
  static Route<dynamic> navigateTo({required BuildContext context}) {
    return MaterialPageRoute(
      builder: (context) => const VerificationCodePage(),
    );
  }
  const VerificationCodePage({super.key});

  @override
  State<VerificationCodePage> createState() => _VerificationCodePageState();
}

class _VerificationCodePageState extends State<VerificationCodePage> {
  @override
  Widget build(BuildContext context) {
    ScreenConfigs.init(context);
    return const Placeholder();
  }
}
