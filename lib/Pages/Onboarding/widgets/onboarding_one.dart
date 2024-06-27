import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flux_store/Pages/Onboarding/widgets/image_card.dart';
import 'package:flux_store/Utils/screen_configs.dart';

class OnboardingOne extends StatelessWidget {
  final String title;
  final String subtitle;
  final String image;

  const OnboardingOne({
    super.key,
    required this.title,
    required this.subtitle,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
            ),
            Text(
              subtitle,
            ),
            ImageCard(image: image),
          ],
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            height: 200.h,
            width: 30.w,
            decoration: BoxDecoration(
              color: const Color(0xFFE7E8E9),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10.r),
                bottomLeft: Radius.circular(10.r),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
