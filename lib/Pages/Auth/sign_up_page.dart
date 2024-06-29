import 'package:flutter/material.dart';
import 'package:flux_store/Commons/Buttons/black_button.dart';
import 'package:flux_store/Configs/flux_text_configs.dart';
import 'package:flux_store/Pages/Auth/log_in_page.dart';
import 'package:flux_store/Pages/Auth/widgets/sign_up_form.dart';
import 'package:flux_store/Utils/flux_colors.dart';
import 'package:flux_store/Utils/flux_height_width_utils.dart';
import 'package:flux_store/Utils/screen_configs.dart';

class SignUpPage extends StatelessWidget {
  static Route<dynamic> navigateTo({required BuildContext context}) {
    return MaterialPageRoute(
      builder: (context) => const SignUpPage(),
    );
  }

  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenConfigs.init(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            horizontal: FluxHeightWidthUtils.defaultHorizontalPadding,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 20.h,
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Create',
                    style: TextStyle(
                      fontFamily: FluxTextConfigs.defaultFont,
                      fontSize: 24.sp,
                      fontWeight: FontWeight.bold,
                      color: FluxColors.black,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    'Your Account',
                    style: TextStyle(
                      fontFamily: FluxTextConfigs.defaultFont,
                      fontSize: 24.sp,
                      fontWeight: FontWeight.bold,
                      color: FluxColors.black,
                    ),
                  ),
                  SizedBox(height: 20.h),
                  const SignUpForm(),
                  SizedBox(height: 30.h),
                  Center(
                    child: BlackButton(
                      onPressed: () {},
                      text: 'Sign Up'.toUpperCase(),
                    ),
                  ),
                  SizedBox(height: 15.h),
                  Center(
                    child: Text(
                      'Or sign up with',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: FluxTextConfigs.defaultFont,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w300,
                        color: FluxColors.black.withOpacity(0.5),
                      ),
                    ),
                  ),
                  SizedBox(height: 15.h),
                  Center(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _buildSocialImages(imagePath: 'assets/images/apple.png'),
                        SizedBox(width: 20.w),
                        _buildSocialImages(imagePath: 'assets/images/google.png'),
                        SizedBox(width: 20.w),
                        _buildSocialImages(imagePath: 'assets/images/facebook.png'),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Center(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context, LoginPage.navigateTo(context: context));
                      },
                      child: RichText(
                        text: TextSpan(
                          text: 'Already have an account? ',
                          style: TextStyle(
                            fontFamily: FluxTextConfigs.defaultFont,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.normal,
                            color: FluxColors.black.withOpacity(0.5),
                          ),
                          children: [
                            TextSpan(
                              text: 'Log In',
                              style: TextStyle(
                                fontFamily: FluxTextConfigs.defaultFont,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.normal,
                                color: FluxColors.black,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Container _buildSocialImages({required String imagePath}) {
    return Container(
      padding: EdgeInsets.all(2.w),
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(
            0xFF838383,
          ),
          width: 1.w,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(30.r),
        ),
      ),
      child: Image.asset(
        imagePath,
        width: 40.w,
        height: 40.h,
      ),
    );
  }
}
