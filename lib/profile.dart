import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import 'bottom_bar.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              SizedBox(
                height: 100,
                width: 100,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: const Image(
                    image: AssetImage('assets/images/profile.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Sandeep Timilsena',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const Text(
                'Sandeeptimilsena333@gmail.com',
                style: TextStyle(fontSize: 12),
              ),
              const SizedBox(
                height: 15,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).primaryColor,
                    shape: const StadiumBorder()),
                child: const Text('Edit Profile'),
              ),
              const SizedBox(
                height: 30,
              ),
              const Divider(),
              const SizedBox(
                height: 10,
              ),
              //  Menu

              const ProfileMenuWidget(
                icone: LineAwesomeIcons.cog,
                title: 'Setting',
              ),
              const ProfileMenuWidget(
                icone: LineAwesomeIcons.info,
                title: 'User Detail',
              ),
              // // const ProfileMenuWidget(
              // //   icone: LineAwesomeIcons.cog,
              // //   title: 'Setting',
              // ),
              const ProfileMenuWidget(
                icone: LineAwesomeIcons.alternate_sign_out,
                title: 'Logout',
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomBar(),
    );
  }
}

class ProfileMenuWidget extends StatelessWidget {
  const ProfileMenuWidget(
      {super.key, required this.title, required this.icone});

  final String title;
  final IconData icone;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: Theme.of(context).primaryColor.withOpacity(0.1)),
        child: Icon(icone),
      ),
      title: Text(title),
    );
    ;
  }
}
