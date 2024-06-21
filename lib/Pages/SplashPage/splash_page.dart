import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flux_store/Commons/Buttons/primary_button.dart';
import 'package:flux_store/Configs/flux_text_configs.dart';
import 'package:flux_store/Utils/flux_height_width_utils.dart';
import 'package:flux_store/Utils/flux_store_images.dart';

class SplashPage extends StatelessWidget {
  static navigateTo() {
    MaterialPageRoute(
      builder: (context) => const SplashPage(),
    );
  }

  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(FluxStoreImages.splashImage),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          color: Colors.black.withOpacity(0.5),
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'Welcome GemStore',
                style: TextStyle(
                  fontFamily: FluxTextConfigs.defaultFont,
                  fontSize: 35.sp,
                  fontWeight: FontWeight.normal,
                  color: Colors.white,
                  decoration: TextDecoration.none,
                ),
              ),
              SizedBox(
                height: 13.0.h,
              ),
              Text(
                'The home for a fashionista',
                style: TextStyle(
                  fontFamily: 'Google Sans',
                  fontWeight: FontWeight.normal,
                  fontStyle: FontStyle.normal,
                  fontSize: 18.sp,
                  color: Colors.white,
                  decoration: TextDecoration.none,
                ),
              ),
              SizedBox(
                height: 30.0.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: FluxHeightWidthUtils.defaultHorizontalPadding,
                  vertical: FluxHeightWidthUtils.defaultVerticalPadding,
                ),
                child: PrimaryButton(onPressed: () {}, text: 'Get Started'),
              ),
              SizedBox(
                height: 80.0.h,
              ),
            ],
          ),
        )
      ],
    );
  }
}