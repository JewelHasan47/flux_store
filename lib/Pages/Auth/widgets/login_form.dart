import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flux_store/Configs/flux_text_configs.dart';
import 'package:flux_store/Pages/Auth/widgets/sign_up_input.dart';
import 'package:flux_store/Utils/flux_colors.dart';

class LogInForm extends StatefulWidget {
  const LogInForm({super.key});

  @override
  State<LogInForm> createState() => _LogInFormState();
}

class _LogInFormState extends State<LogInForm> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

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
