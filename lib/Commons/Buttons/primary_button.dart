import 'package:flutter/material.dart';
import 'package:flux_store/Configs/flux_text_configs.dart';
import 'package:flux_store/Utils/screen_configs.dart';

class PrimaryButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;

  const PrimaryButton({
    super.key,
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: Colors.grey.shade600,
        foregroundColor: Colors.black87,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0.r),
          side: const BorderSide(
            color: Colors.white,
            width: 1.5,
          ),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 50.w,
          vertical: 15.h,
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontStyle: FontStyle.normal,
          fontFamily: FluxTextConfigs.defaultFont,
          fontSize: 16.sp,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}
