import 'package:basic_flutter/widgets/card_category.dart';
import 'package:basic_flutter/widgets/heading.dart';
import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Heading(
                text: "Default",
              ),
              Icon(
                Icons.arrow_forward,
                color: Colors.grey.shade600,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        const SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(
                width: 50,
              ),
              CardCategory(),
              CardCategory(),
              CardCategory()
            ],
          ),
        )
      ],
    );
  }
}
