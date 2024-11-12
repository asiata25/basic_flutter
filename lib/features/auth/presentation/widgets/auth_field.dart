import 'package:flutter/material.dart';

class AuthField extends StatelessWidget {
  final String hintText;
  final String labelText;
  final TextEditingController teController;
  final bool obscureText;
  const AuthField(
      {super.key,
      required this.hintText,
      required this.labelText,
      required this.teController,
      this.obscureText = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(labelText),
        const SizedBox(
          height: 8,
        ),
        TextField(
          obscureText: obscureText,
          controller: teController,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            hintText: hintText,
          ),
        ),
      ],
    );
  }
}
