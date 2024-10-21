import 'package:flutter/material.dart';

import '../../../../common/widgets/app_button/app_button.dart';
import '../../../../common/widgets/basic_app_bar/app_bar.dart';
import '../../../../core/theme/appcolors.dart';
import '../../register/page/register.dart';

class Login extends StatelessWidget {
  Login({super.key});

  final _emailcontroller = TextEditingController();
  final _passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BasicAppBar(
        text: "Log In",
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Welcome",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 26,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 35),
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(
                height: 71,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                color: AppColors.lightpurple,
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 47, right: 47, top: 28, bottom: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Username or email",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 15),
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      _emailfield(),
                      const SizedBox(
                        height: 19,
                      ),
                      const Text(
                        "Password",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 15),
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      _passwordfield(),
                      const SizedBox(
                        height: 12,
                      ),
                      const Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "Forgot Password?",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 41,
              ),
              AppButton("Log In", () async {}),
              const SizedBox(
                height: 29,
              ),
              const Text(
                "or sign up with",
                style: TextStyle(color: Colors.white, fontSize: 13),
              ),
              const SizedBox(
                height: 19,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  signInIcon(Icons.mail),
                  const SizedBox(width: 16),
                  signInIcon(Icons.facebook),
                  const SizedBox(width: 16),
                  signInIcon(Icons.fingerprint)
                ],
              ),
              const SizedBox(height: 47),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don’t have an account?",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w200),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => Register()),
                      );
                    },
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(
                          color: AppColors.yellow, fontWeight: FontWeight.w200),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _emailfield() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: const InputDecoration(
        hintText: "example@example.com",
      ),
      controller: _emailcontroller,
      style: const TextStyle(),
    );
  }

  Widget _passwordfield() {
    return TextField(
      keyboardType: TextInputType.visiblePassword,
      obscureText: true,
      decoration: const InputDecoration(
        hintText: "*************",
      ),
      controller: _passwordcontroller,
      style: const TextStyle(),
    );
  }

  Widget signInIcon(IconData icon) {
    return GestureDetector(
      child: Container(
        width: 34,
        height: 34,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(13),
          ),
        ),
        child: Center(
          child: Icon(
            icon,
            size: 30,
            color: AppColors.purple,
          ),
        ),
      ),
    );
  }
}
