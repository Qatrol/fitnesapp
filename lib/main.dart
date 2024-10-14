import 'package:flutter/material.dart';
import 'package:qatfor/configs/theme/apptheme.dart';
import 'package:qatfor/pages/splash/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme,
      home: const SplashPage(),
    );
  }
}
