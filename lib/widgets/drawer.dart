import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter_application_1/widgets/drawer.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key, child});
  final imageUrl =
      "https://www.syfy.com/sites/syfy/files/2022/04/screen_shot_2022-04-18_at_1.00.45_pm.png";

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
      color: Colors.cyan,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                decoration: const BoxDecoration(color: Colors.cyan),
                accountName: const Text("Sanjay Maddheshiya"),
                accountEmail: const Text("coder.sanjay19@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                )),
          ),
          const ListTile(
            leading: Icon(CupertinoIcons.home),
          )
        ],
      ),
    ));
  }
}
