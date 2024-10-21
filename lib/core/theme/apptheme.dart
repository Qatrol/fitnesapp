import 'package:flutter/material.dart';
import 'package:qatfor/core/theme/appcolors.dart';

final theme = ThemeData(
  useMaterial3: true,
  scaffoldBackgroundColor: AppColors.backgroundColor,
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: Colors.white,
    hintStyle: const TextStyle(
      color: Color(0xffA7A7A7),
      fontWeight: FontWeight.w500,
    ),
    contentPadding: const EdgeInsets.all(10),
    border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: const BorderSide(color: Colors.transparent, width: 0.4)),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: const BorderSide(color: Colors.transparent),
    ),
  ),
);
