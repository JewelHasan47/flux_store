import 'package:flutter/material.dart';
import 'package:flux_store/Utils/screen_configs.dart';

class ImageCard extends StatelessWidget {
  const ImageCard({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.h,
      width: 250.w,
      // padding: EdgeInsets.symmetric(horizontal: 40.0.w),
      decoration: BoxDecoration(
        color: const Color(0xFFE7E8E9),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Image(
        image: AssetImage(image),
        fit: BoxFit.contain,
      ),
    );
  }
}
