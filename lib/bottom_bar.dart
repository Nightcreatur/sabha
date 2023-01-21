import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:sabha/categories/notice.dart';
import 'package:sabha/main.dart';
import 'package:sabha/profile.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return GNav(
      gap: 8,
      activeColor: Theme.of(context).primaryColor,
      tabs: [
        GButton(
          icon: Icons.home,
          text: 'Home',
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomePage(),
                ));
          },
        ),
        GButton(
          icon: Icons.notifications,
          text: 'Notice',
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: ((context) => const Notice())));
          },
        ),
        // GButton(
        //   icon: Icons.search,
        //   text: 'Search',
        // ),
        GButton(
          icon: Icons.person,
          text: 'Profile',
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Profile(),
                ));
          },
        )
      ],
    );
  }
}
