import 'package:flutter/material.dart';
import 'package:sabha/bidhayek.dart';
import 'package:sabha/bottom_bar.dart';
import 'package:sabha/carousle.dart';
import 'package:sabha/categories.dart';

import 'package:sabha/drawer.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sabha',
      theme: ThemeData(primarySwatch: Colors.cyan),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(248, 214, 215, 215),
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: GestureDetector(
              onTap: null,
              child: const Icon(Icons.menu),
            ),
          )
        ],
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
              SizedBox(
                height: 20,
              ),
              Bidhayek()
            ],
          ),
        ),
      )

      // Categories(),
      ,
      drawer: const Drawer(
        child: MyDrawer(),
      ),
      bottomNavigationBar: const BottomBar(),
    );
  }
}
