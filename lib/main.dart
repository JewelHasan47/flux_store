import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flux_store/Configs/flux_store_configs.dart';
import 'package:flux_store/Pages/HomeSlider/demo_slider.dart';
import 'package:flux_store/Pages/HomeSlider/products.dart';
import 'package:flux_store/Pages/SplashPage/splash_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(FluxStoreConfigs.screenWidth, FluxStoreConfigs.screenHeight),
      builder: (context, child) => MaterialApp(
        title: FluxStoreConfigs.appName,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const CarouselWithIndicatorDemo(),
      ),
    );
  }
}