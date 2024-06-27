import 'package:flutter/material.dart';
import 'package:flux_store/Configs/flux_text_configs.dart';
import 'package:flux_store/Utils/flux_colors.dart';
import 'package:flux_store/Utils/screen_configs.dart';

class SignUpInput extends StatelessWidget {
  final String hintText;
  final TextEditingController textEditingController;

  const SignUpInput({
    super.key,
    required this.hintText,
    required this.textEditingController,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      decoration: InputDecoration(
        hintText: hintText,
        contentPadding: EdgeInsets.symmetric(
          vertical: 15.h,
        ),
        border: UnderlineInputBorder(
          borderSide: BorderSide(
            color: FluxColors.divider,
            width: 2.0.w,
          ),
        ),
        hintStyle: TextStyle(
          color: FluxColors.black,
          fontFamily: FluxTextConfigs.defaultFont,
          fontSize: 14.sp,
          fontWeight: FontWeight.w300,
        ),
      ),
    );
  }
}
