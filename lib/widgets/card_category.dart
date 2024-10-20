import 'package:basic_flutter/widgets/heading.dart';
import 'package:flutter/material.dart';

class CardCategory extends StatelessWidget {
  const CardCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 190,
      height: 190,
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: const BorderRadius.all(Radius.circular(10))),
      child: Column(
        children: [
          const Expanded(
              child: Icon(
            Icons.photo,
            size: 56,
          )),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Heading(
                text: "Switzerland",
              ),
              const Icon(
                Icons.favorite_outline,
                size: 20,
              )
            ],
          ),
          const Row(
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.star_outline,
                      size: 15,
                    ),
                    Text(
                      "4.5",
                    ),
                  ],
                ),
              ),
              Expanded(child: SizedBox())
            ],
          )
        ],
      ),
    );
  }
}
