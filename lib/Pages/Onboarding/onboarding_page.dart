import 'package:flutter/material.dart';
import 'package:flux_store/Pages/Onboarding/widgets/onboarding_one.dart';
import 'package:flux_store/Pages/Onboarding/widgets/onboarding_three.dart';
import 'package:flux_store/Pages/Onboarding/widgets/onboarding_two.dart';
import 'package:flux_store/Utils/screen_configs.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingPage extends StatefulWidget {
  static Route<dynamic> navigateTo({required BuildContext context}) {
    return MaterialPageRoute(
      builder: (context) => const OnboardingPage(),
    );
  }

  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final PageController _pageController = PageController(initialPage: 0);

  final List<Map<String, String>> _pages = [
    {
      'title': 'Discover something new',
      'subtitle': 'Special new arrivals just for you',
      'image': 'assets/images/onboard_img_1.png',
    },
    {
      'title': 'Update trendy outfit',
      'subtitle': 'Favorite brands and hottest trends',
      'image': 'assets/images/onboard_img_2.png',
    },
    {
      'title': 'Explore your true style',
      'subtitle': 'Relax and let us bring the style to you',
      'image': 'assets/images/onboard_img_3.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.white,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    color: const Color(
                      0xFF464447,
                    ),
                  ),
                ),
              ],
            ),
            // PageView for onboarding screens
            PageView(
              controller: _pageController,
              children: [
                OnboardingOne(
                  title: _pages[0]['title']!,
                  subtitle: _pages[0]['subtitle']!,
                  image: _pages[0]['image']!,
                ),
                OnboardingTwo(
                  title: _pages[1]['title']!,
                  subtitle: _pages[1]['subtitle']!,
                  image: _pages[1]['image']!,
                ),
                OnboardingThree(
                  title: _pages[2]['title']!,
                  subtitle: _pages[2]['subtitle']!,
                  image: _pages[2]['image']!,
                ),
              ],
            ),
            // Page indicator
            Positioned(
              bottom: 120.h,
              left: 0.w,
              right: 0.w,
              child: Center(
                child: SmoothPageIndicator(
                  controller: _pageController,
                  count: _pages.length,
                  effect: SlideEffect(
                    spacing: 8.0,
                    radius: 4.0.r,
                    dotWidth: 8.0.w,
                    dotHeight: 8.0.h,
                    paintStyle: PaintingStyle.fill,
                    dotColor: Colors.grey,
                    activeDotColor: Colors.white,
                  ),
                ),
              ),
            ),
            // Shopping Now button
            Positioned(
              bottom: 40, // Adjust as needed
              left: 0,
              right: 0,
              child: Center(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: Colors.black.withOpacity(0.25),
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
                  child: const Text(
                    'Shopping Now',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
