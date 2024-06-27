import 'package:flutter/material.dart';
import 'package:flux_store/Commons/AppBars/simple_app_bar.dart';
import 'package:flux_store/Configs/flux_text_configs.dart';
import 'package:flux_store/Utils/flux_height_width_utils.dart';
import 'package:flux_store/Utils/screen_configs.dart';

class ForgotPasswordPage extends StatefulWidget {
  static Route<dynamic> navigateTo({required BuildContext context}) {
    return MaterialPageRoute(
      builder: (context) => const ForgotPasswordPage(),
    );
  }

  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SimpleAppBar(),
      body: Container(
        padding: EdgeInsets.all(FluxHeightWidthUtils.defaultHorizontalPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Forgot Password?',
              style: TextStyle(
                fontSize: 25.sp,
                fontWeight: FontWeight.bold,
                fontFamily: FluxTextConfigs.defaultFont,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              'Enter email associated with your account\n and we' 'll send and email with instructions to\n reset your password.',
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w300,
                fontFamily: FluxTextConfigs.defaultFont,
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            TextFormField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 10.w),
                  prefixIcon: Icon(
                    Icons.email,
                    size: 14.h,
                  ),
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black.withOpacity(0.5),
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black.withOpacity(0.5),
                    ),
                  ),
                  hintText: 'enter your email here',
                  hintStyle: TextStyle(
                    color: Colors.black,
                    fontFamily: FluxTextConfigs.defaultFont,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w300,
                    textBaseline: TextBaseline.alphabetic,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
