import 'package:flutter/material.dart';

import 'package:sabha/categories/dummy_data.dart';

import 'category_item.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.all(25),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
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
