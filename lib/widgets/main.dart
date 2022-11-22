import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/pages/login_page.dart';
import 'package:flutter_application_1/utilits/routes.dart';
import 'package:flutter_application_1/widgets/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.HomeRoutes,
      routes: {
        "/": (context) => const LoginPage(),
        MyRoutes.HomeRoutes: (context) => const HomePage(),
        MyRoutes.LoginRoutes: (context) => const LoginPage(),
      },
    );
  }
}
