import 'package:flutter/material.dart';
import 'package:flutter_base_project/core/theme/colors.dart';

class AppTextButton extends StatelessWidget {
  final String title;
  final Function onPressed;

  const AppTextButton({super.key, required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () => onPressed(),
        child: const Text(
          "",
          style: TextStyle(color: C.primaryColor),
        ));
  }
}
