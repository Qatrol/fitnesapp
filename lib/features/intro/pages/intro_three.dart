import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qatfor/core/configs/assets/app_vectors.dart';
import 'package:qatfor/features/intro/pages/intro_four.dart';

import '../../../common/widgets/app_button/app_button.dart';
import '../../../core/configs/assets/app_images.dart';
import '../../../core/theme/appcolors.dart';

class IntroThree extends StatelessWidget {
  const IntroThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(AppImages.introBG_3),
            ),
          ),
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 169,
                color: AppColors.lightpurple,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(AppVectors.nutrition),
                    const SizedBox(
                      height: 10,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 43),
                      child: Text(
                        "Find nutrition tips that fit your lifestyle",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 9,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 4,
                          width: 20,
                          color: const Color(0xff896CFE),
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        Container(
                          height: 4,
                          width: 20,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        Container(
                          height: 4,
                          width: 20,
                          color: const Color(0xff896CFE),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              AppButton("Next", () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => const IntroFour(),
                  ),
                );
              }),
            ],
          ),
        ),
      ],
    ));
  }
}