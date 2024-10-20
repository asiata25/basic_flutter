import 'package:basic_flutter/widgets/heading.dart';
import 'package:flutter/material.dart';

class CardSchedule extends StatelessWidget {
  const CardSchedule({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 50),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: const BorderRadius.all(Radius.circular(10))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Heading(
                text: "Waller App Design",
                fontWeight: FontWeight.w600,
              ),
              const Text(
                "3d",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
              )
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            "Team members",
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Container(
                width: 30,
                height: 30,
                margin: const EdgeInsets.only(right: 6),
                decoration: BoxDecoration(
                    color: Colors.grey.shade500,
                    borderRadius: BorderRadius.circular(50)),
                child: const Icon(
                  Icons.photo,
                  size: 20,
                ),
              ),
              Container(
                width: 30,
                height: 30,
                margin: const EdgeInsets.only(right: 6),
                decoration: BoxDecoration(
                    color: Colors.grey.shade500,
                    borderRadius: BorderRadius.circular(50)),
                child: const Icon(
                  Icons.photo,
                  size: 20,
                ),
              ),
              Container(
                width: 30,
                height: 30,
                margin: const EdgeInsets.only(right: 6),
                decoration: BoxDecoration(
                    color: Colors.grey.shade500,
                    borderRadius: BorderRadius.circular(50)),
                child: const Icon(
                  Icons.photo,
                  size: 20,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          const Row(
            children: [
              Icon(
                Icons.schedule_outlined,
                size: 20,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "2:30 PM - 6:00 PM",
                style: TextStyle(fontWeight: FontWeight.w300, fontSize: 12),
              )
            ],
          )
        ],
      ),
    );
  }
}
