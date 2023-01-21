import 'package:flutter/material.dart';

class DummyData {
  final String id;
  final String name;
  final IconData icone;
  final Color color;

  const DummyData(
      {required this.id,
      required this.name,
      required this.icone,
      this.color = Colors.white38});
}
