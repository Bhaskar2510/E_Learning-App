import 'package:e_learning/constants.dart';
import 'package:flutter/material.dart';

class Sorting extends StatefulWidget {
  const Sorting({Key? key}) : super(key: key);

  @override
  State<Sorting> createState() => _SortingState();
}

class _SortingState extends State<Sorting> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(
              horizontal: 15, vertical: 10),
          decoration: BoxDecoration(
              color: kpink,
              borderRadius: BorderRadius.circular(10.0)),
          child: const Text(
            "Top",
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(
              horizontal: 15, vertical: 10),
          child: const Text(
            "Design",
            style: TextStyle(fontSize: 18,),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(
              horizontal: 15, vertical: 10),
          child: const Text(
            "Marketing",
            style: TextStyle(fontSize: 18,),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child: SizedBox(
            height: 20.0,
            child: Image.asset("assets/icon/sort.png"),
          ),
        )
      ],
    );
  }
}
