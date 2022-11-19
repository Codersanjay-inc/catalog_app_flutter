import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter_application_1/widgets/drawer.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: const [
          DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                accountName: Text("Sanjay Maddheshiya"),
                accountEmail: Text("coder.sanjay19@gmail.com"),
              ))
        ],
      ),
    );
  }
}
