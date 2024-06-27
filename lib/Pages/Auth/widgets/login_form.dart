import 'package:flutter/material.dart';
import 'package:flux_store/Pages/Auth/widgets/sign_up_input.dart';
import 'package:flux_store/Utils/screen_configs.dart';

class LogInForm extends StatefulWidget {
  const LogInForm({super.key});

  @override
  State<LogInForm> createState() => _LogInFormState();
}

class _LogInFormState extends State<LogInForm> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SignUpInput(hintText: 'Email address', textEditingController: _emailController),
        SizedBox(
          height: 20.h,
        ),
        SignUpInput(
          hintText: 'Password',
          textEditingController: _passwordController,
        ),
      ],
    );
  }
}
