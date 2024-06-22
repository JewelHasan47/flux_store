import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flux_store/Configs/flux_text_configs.dart';
import 'package:flux_store/Pages/Auth/widgets/sign_up_input.dart';
import 'package:flux_store/Utils/flux_colors.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SignUpInput(hintText: 'Enter your name', textEditingController: _nameController),
        SizedBox(
          height: 20.h,
        ),
        SignUpInput(hintText: 'Email address', textEditingController: _emailController),
        SizedBox(
          height: 20.h,
        ),
        SignUpInput(
          hintText: 'Password',
          textEditingController: _passwordController,
        ),
        SizedBox(
          height: 20.h,
        ),
        SignUpInput(
          hintText: 'Confirm password',
          textEditingController: _confirmPasswordController,
        ),
      ],
    );
  }
}
