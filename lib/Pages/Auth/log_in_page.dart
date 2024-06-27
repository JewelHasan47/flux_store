import 'package:flutter/material.dart';
import 'package:flux_store/Commons/Buttons/black_button.dart';
import 'package:flux_store/Configs/flux_text_configs.dart';
import 'package:flux_store/Pages/Auth/forgot_password_page.dart';
import 'package:flux_store/Pages/Auth/sign_up_page.dart';
import 'package:flux_store/Pages/Auth/widgets/login_form.dart';
import 'package:flux_store/Utils/flux_colors.dart';
import 'package:flux_store/Utils/flux_height_width_utils.dart';
import 'package:flux_store/Utils/flux_store_images.dart';
import 'package:flux_store/Utils/screen_configs.dart';

class LoginPage extends StatelessWidget {
  static Route<dynamic> navigateTo({required BuildContext context}) {
    return MaterialPageRoute(
      builder: (context) => const LoginPage(),
    );
  }

  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
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
                    'Log Into',
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
                  const LogInForm(),
                  SizedBox(height: 30.h),
                  Align(
                    alignment: Alignment.centerRight,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          ForgotPasswordPage.navigateTo(context: context),
                        );
                      },
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(
                          fontFamily: FluxTextConfigs.defaultFont,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w300,
                          color: FluxColors.black.withOpacity(0.5),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30.h),
                  Center(
                    child: BlackButton(
                      onPressed: () {},
                      text: 'Log In'.toUpperCase(),
                    ),
                  ),
                  SizedBox(height: 15.h),
                  Center(
                    child: Text(
                      'Or log in with',
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
                        _buildSocialImages(imagePath: FluxStoreImages.apple),
                        SizedBox(width: 20.w),
                        _buildSocialImages(imagePath: FluxStoreImages.google),
                        SizedBox(width: 20.w),
                        _buildSocialImages(imagePath: FluxStoreImages.facebook),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Center(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context, SignUpPage.navigateTo(context: context));
                      },
                      child: RichText(
                        text: TextSpan(
                          text: 'Don\'t have an account? ',
                          style: TextStyle(
                            fontFamily: FluxTextConfigs.defaultFont,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.normal,
                            color: FluxColors.black.withOpacity(0.5),
                          ),
                          children: [
                            TextSpan(
                              text: 'Sign Up',
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
