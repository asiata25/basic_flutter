import 'package:basic_flutter/core/theme/app_theme.dart';
import 'package:basic_flutter/features/auth/presentation/pages/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Book Movie',
      theme: AppTheme.defaultThemeMode,
      home: const LoginPage(),
    );
  }
}
