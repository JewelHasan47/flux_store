import 'package:flutter/material.dart';
import 'package:flux_store/Utils/screen_configs.dart';

class CreateNewPasswordPage extends StatefulWidget {
  static Route<dynamic> navigateTo({required BuildContext context}) {
    return MaterialPageRoute(
      builder: (context) => const CreateNewPasswordPage(),
    );
  }
  const CreateNewPasswordPage({super.key});

  @override
  State<CreateNewPasswordPage> createState() => _CreateNewPasswordPageState();
}

class _CreateNewPasswordPageState extends State<CreateNewPasswordPage> {
  @override
  Widget build(BuildContext context) {
    ScreenConfigs.init(context);
    return const Placeholder();
  }
}
