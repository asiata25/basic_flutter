import 'package:basic_flutter/core/theme/app_pallete.dart';
import 'package:basic_flutter/features/movies/presentation/pages/home_page.dart';
import 'package:flutter/material.dart';

class AuthButton extends StatelessWidget {
  final bool Function() onClick;

  const AuthButton({super.key, required this.onClick});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: AppPallete.secondaryColor,
            shadowColor: Colors.transparent,
            padding: const EdgeInsets.symmetric(vertical: 14),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(12)))),
        onPressed: () {
          if (onClick()) {
            Navigator.pushReplacement(context, HomePage.route());
          }
        },
        child: const Text(
          "Sign In",
          style: TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.w400),
        ));
  }
}
