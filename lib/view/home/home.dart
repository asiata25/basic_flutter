import 'package:basic_flutter/view/home/sections/category.dart';
import 'package:basic_flutter/view/home/sections/popular.dart';
import 'package:basic_flutter/widgets/card_schedule.dart';
import 'package:basic_flutter/widgets/heading.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(50, 50, 50, 21),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.notifications_none,
                  color: Colors.grey.shade600,
                ),
                Heading(
                  text: "Explore",
                  fontSize: 20,
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.grey.shade300),
                  child: Icon(
                    Icons.photo,
                    color: Colors.grey.shade600,
                  ),
                )
              ],
            ),
          ),
          const Category(),
          const SizedBox(
            height: 45,
          ),
          const Popular(),
          const SizedBox(
            height: 38,
          ),
          const CardSchedule()
        ],
      ),
    ));
  }
}
