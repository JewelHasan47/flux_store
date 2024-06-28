import 'package:flutter/material.dart';
import 'package:flux_store/Pages/Onboarding/widgets/image_card.dart';

class OnboardingTwo extends StatelessWidget {
  final String title;
  final String subtitle;
  final String image;

  const OnboardingTwo({
    super.key,
    required this.title,
    required this.subtitle,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}


