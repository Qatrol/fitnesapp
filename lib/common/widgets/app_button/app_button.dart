import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const AppButton(this.text, this.onPressed, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white.withOpacity(0.09),
            side: const BorderSide(
              color: Colors.white,
              width: 0.5,
            ),
            elevation: 0.1,
            shadowColor: Colors.grey,
          ),
          onPressed: onPressed,
          child: SizedBox(
            width: 150,
            height: 44,
            child: Center(
              child: Text(
                text,
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
