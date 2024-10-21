import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qatfor/core/configs/assets/app_images.dart';
import 'package:qatfor/core/configs/assets/app_vectors.dart';
import 'package:qatfor/core/theme/appcolors.dart';
import 'package:qatfor/features/intro/pages/intro_two.dart';

class IntroOne extends StatelessWidget {
  const IntroOne({super.key});

  @override
  Widget build(BuildContext context) {
    redirect(context);
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(AppImages.introBG_1),
              ),
            ),
          ),
          Container(
            color: Colors.black.withOpacity(0.50),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Welcome to",
                style: TextStyle(
                    color: AppColors.yellow,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 18,
              ),
              SvgPicture.asset(AppVectors.fb),
              const SizedBox(
                height: 20,
              ),
              SvgPicture.asset(AppVectors.fitbody),
            ],
          ),
        ],
      ),
    );
  }

  Future<void> redirect(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 2));
    if (context.mounted) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) => const IntroTwo(),
        ),
      );
    }
  }
}
