import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        DrawerHeader(
          margin: const EdgeInsets.only(top: 20),
          decoration: const BoxDecoration(color: Colors.white30),
          child: Column(children: [
            Container(
              width: 70.0,
              height: 70.0,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/profile.jpg')),
              ),
            ),
            Text(
              'Sandeep Timilsena',
              style: TextStyle(fontSize: 20, color: Colors.grey[700]),
            ),
            Text('sandeeptimilsena333@gmail.com',
                style: TextStyle(fontSize: 14, color: Colors.grey[700]))
          ]),
        ),
        ListTile(
          title: const Text("प्रदेश सभा"),
          onTap: () {
            // handle menu 1 tap
          },
        ),
        ListTile(
          title: const Text("प्रदेश सभा सचिवालय"),
          onTap: () {
            // handle menu 2 tap
          },
        ),
        ListTile(
          title: const Text("विधायकहरु "),
          onTap: () {
            // handle menu 2 tap
          },
        ),
        ListTile(
          title: const Text("संबिधान ऐन नियम "),
          onTap: () {
            // handle menu 2 tap
          },
        ),
        ListTile(
          title: const Text("सुचना तथा प्रकाशन "),
          onTap: () {
            // handle menu 2 tap
          },
        ),
        ListTile(
          title: const Text("लेख रचना हरु "),
          onTap: () {
            // handle menu 2 tap
          },
        ),
        ListTile(
          title: const Text("ग्यालेरी "),
          onTap: () {
            // handle menu 2 tap
          },
        ),
      ],
    );
  }
}
