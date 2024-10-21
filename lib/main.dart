import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qatfor/common/bloc/auntefication_bloc/auntefication_bloc.dart';
import 'package:qatfor/core/theme/apptheme.dart';
import 'package:qatfor/data/firebase_user_repo.dart';
import 'package:qatfor/data/user_repo.dart';
import 'package:qatfor/features/splash/splash_screen/splash_page.dart';
import 'package:qatfor/firebase_options.dart';
import 'package:qatfor/simple_bloc_observer.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  Bloc.observer = SimpleBlocObserver();
  runApp(MyApp(FirebaseUserRepo()));
}

class MyApp extends StatelessWidget {
  final UserRepository userRepository;
  const MyApp(this.userRepository, {super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme,
      home: RepositoryProvider<AunteficationBloc>(
        create: (context) => AunteficationBloc(userRepository: userRepository),
        child: const SplashPage(),
      ),
    );
  }
}
