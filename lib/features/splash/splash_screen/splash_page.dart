import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qatfor/common/bloc/auntefication_bloc/auntefication_bloc.dart';
import 'package:qatfor/core/configs/assets/app_vectors.dart';
import 'package:qatfor/features/home/bloc_test/page/home.dart';
import '../../intro/pages/intro_one.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AunteficationBloc, AunteficationState>(
        builder: (context, state) {
          if (state.status == AunteficationStatus.aunteficated) {
            return const Home();
          } else if (state.status == AunteficationStatus.unaunteficated) {
            redirect();
          }
          return Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(AppVectors.fb),
                const SizedBox(
                  height: 20,
                ),
                SvgPicture.asset(AppVectors.fitbody),
              ],
            ),
          );
        },
      ),
    );
  }

  Future<void> redirect() async {
    await Future.delayed(const Duration(seconds: 2));
    if (mounted) {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (BuildContext context) => const IntroOne()));
    }
  }
}
