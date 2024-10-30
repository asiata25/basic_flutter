import 'package:basic_flutter/core/theme/app_pallete.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static _border([Color color = AppPallete.grey200]) => OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(8)),
      borderSide: BorderSide(color: color, width: 1));

  static final defaultThemeMode = ThemeData(
      fontFamily: "Mulish",
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          foregroundColor: AppPallete.mainColor),
      inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: AppPallete.grey100,
          contentPadding: const EdgeInsets.all(14),
          enabledBorder: _border(),
          focusedBorder: _border(AppPallete.mainColor),
          hintStyle: const TextStyle(
              color: AppPallete.grey300,
              fontWeight: FontWeight.w400,
              fontSize: 14)));
}
