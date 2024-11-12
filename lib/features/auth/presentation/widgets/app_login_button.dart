import 'package:basic_flutter/core/theme/app_pallete.dart';
import 'package:flutter/material.dart';

class AppLoginButton extends StatelessWidget {
  final String textButton;
  final ImageProvider imageIcon;

  const AppLoginButton(
      {super.key, required this.textButton, required this.imageIcon});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: GestureDetector(
      onTap: () {
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8),
        decoration: const BoxDecoration(
            color: AppPallete.grey100,
            borderRadius: BorderRadius.all(Radius.circular(12))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 24,
              height: 24,
              decoration:
                  BoxDecoration(image: DecorationImage(image: imageIcon)),
            ),
            const SizedBox(
              width: 16,
            ),
            Text(
              textButton,
              style: const TextStyle(fontSize: 16),
            )
          ],
        ),
      ),
    ));
  }
}
