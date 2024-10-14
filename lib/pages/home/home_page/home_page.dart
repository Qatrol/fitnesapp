import 'package:flutter/material.dart';
import 'package:qatfor/configs/assets/app_images.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(AppImages.introBG),
            ),
          ),
        ),
        Container(
          color: Colors.black.withOpacity(0.50),
        ),
      ],
    );
  }
}
