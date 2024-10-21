import 'package:basic_flutter/core/theme/app_pallete.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static route() => MaterialPageRoute(
        builder: (context) => HomePage(),
      );
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "Home",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: AppPallete.mainColor,
      ),
      body: Center(
        child: Text("Welcome!"),
      ),
    );
  }
}
