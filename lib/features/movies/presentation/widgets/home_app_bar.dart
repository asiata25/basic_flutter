import 'package:basic_flutter/core/theme/app_pallete.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 25,
            backgroundImage: NetworkImage(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRC8kiSH5ZSAcVoj3tAQQDoP_ux0sSricMyUg&s"),
          ),
          const SizedBox(
            width: 8,
          ),
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hi, Mohit",
                  style: TextStyle(
                      color: AppPallete.secondaryColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 14),
                ),
                Text(
                  "Let's watch a movie",
                  style: TextStyle(color: AppPallete.grey300, fontSize: 12),
                )
              ],
            ),
          ),
          Row(
            children: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.notifications_outlined))
            ],
          )
        ],
      ),
    );
  }
}
