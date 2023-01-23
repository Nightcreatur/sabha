import 'package:flutter/material.dart';
import 'package:sabha/bottom_bar.dart';
import 'package:sabha/carousle.dart';

import 'package:sabha/drawer.dart';

import 'bidhayek/bidhayek.dart';
import 'categories/categories.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sabha',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(248, 209, 230, 245),
      appBar: AppBar(
        leading: Container(
          margin: const EdgeInsets.only(left: 5),
          height: 70,
          child: const Image(image: AssetImage('assets/images/pga_logo.png')),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Carousle(),
              const SizedBox(
                height: 40,
              ),
              const SizedBox(
                height: 300,
                child: Categories(),
              ),
              const SizedBox(
                height: 20,
              ),
              const Bidhayek()
            ],
          ),
        ),
      ),
      endDrawer: const MyDrawer(),

      // Categories(),

      bottomNavigationBar: const BottomBar(),
    );
  }
}
