import 'package:flutter/material.dart';
import 'package:flux_store/Pages/Auth/widgets/sign_up_input.dart';
import 'package:flux_store/Utils/screen_configs.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

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
