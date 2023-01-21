import 'package:flutter/material.dart';
import 'package:sabha/category_item.dart';
import 'package:sabha/dummy_data.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(25),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 1.4,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8),
      children: dummyData
          .map(
            (dum) => CategoryItem(dum.id, dum.name, dum.icone, dum.color),
          )
          .toList(),
    );
  }
}
