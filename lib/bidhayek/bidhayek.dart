import 'package:flutter/material.dart';
import '../bidhayek/bidhayek_data.dart';
import 'bidhaye_item.dart';

class Bidhayek extends StatelessWidget {
  const Bidhayek({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: 200,
        child: GridView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.all(25),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              childAspectRatio: 1.4,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8),
          children: dummyBihayek
              .map(
                (dum) => BidhayekItem(dum.id, dum.name, dum.img, dum.color),
              )
              .toList(),
        ),
      ),
    );
  }
}
