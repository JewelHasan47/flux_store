import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flux_store/Configs/flux_text_configs.dart';
import 'package:flux_store/Utils/flux_colors.dart';

class BlackButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;

  const BlackButton({
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
        backgroundColor: FluxColors.black,
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
