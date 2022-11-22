import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Catalog"),
        ),
        body: Center(
          child: Column(
            children: const [
              Text("Welcome to this universe"),
            ],
          ),
        ),
        drawer: const MyDrawer());
  }
}
