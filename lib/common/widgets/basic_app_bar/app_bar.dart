import 'package:flutter/material.dart';
import 'package:qatfor/core/theme/appcolors.dart';

class BasicAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? text;
  const BasicAppBar({this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        text ?? "",
        style: const TextStyle(
            fontSize: 20, fontWeight: FontWeight.bold, color: AppColors.yellow),
      ),
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(
          Icons.arrow_left,
          color: AppColors.yellow,
          size: 30,
        ),
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
