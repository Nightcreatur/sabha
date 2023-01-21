import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String name;
  final IconData icone;
  final Color color;
  const CategoryItem(this.id, this.name, this.icone, this.color, {super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.grey,
      borderRadius: BorderRadius.circular(30),
      onTap: null,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            gradient: LinearGradient(colors: [color.withOpacity(.7), color])),
        padding: const EdgeInsets.all(10),
        child: Center(
            child: Column(
          children: [
            Icon(icone, color: Theme.of(context).primaryColor),
            Text(
              name,
              style: const TextStyle(
                  color: Colors.blueGrey, fontWeight: FontWeight.bold),
            ),
          ],
        )),
      ),
    );
  }
}
