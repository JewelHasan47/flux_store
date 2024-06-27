import 'package:flutter/material.dart';
import 'package:flux_store/Configs/flux_store_configs.dart';
import 'package:flux_store/Pages/SplashPage/splash_page.dart';
import 'package:flux_store/Utils/screen_configs.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenConfigs.init(context);

    return MaterialApp(
      title: FluxStoreConfigs.appName,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
        useMaterial3: true,
      ),
      home: const SplashPage(),
    );
  }
}
