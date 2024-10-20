import 'package:flutter/material.dart';

class PopularItem extends StatelessWidget {
  String title;
  PopularItem({super.key, this.title = "title"});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: const BorderRadius.all(Radius.circular(5))),
          child: const Icon(
            Icons.photo,
            size: 25,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          title,
          style: const TextStyle(fontSize: 12),
        )
      ],
    );
  }
}
