import 'package:basic_flutter/widgets/heading.dart';
import 'package:basic_flutter/widgets/popular_item.dart';
import 'package:flutter/material.dart';

class Popular extends StatelessWidget {
  const Popular({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Heading(
                text: "Popular",
              ),
              Icon(
                Icons.arrow_forward,
                color: Colors.grey.shade600,
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              PopularItem(
                title: "Mountains",
              ),
              PopularItem(
                title: "Loke",
              ),
              PopularItem(
                title: "Vacation",
              ),
              PopularItem(
                title: "Camping",
              ),
            ],
          )
        ],
      ),
    );
  }
}
