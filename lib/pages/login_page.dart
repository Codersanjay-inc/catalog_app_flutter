import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  late bool changeButton = false;
  get onPressed => null;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
          child: Column(
        children: [
          Image.asset(
            "assets/img/login.png",
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 20.0,
          ),
          Text(
            "WELCOME $name",
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
            child: Column(children: [
              TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Enter Username",
                    labelText: "User name",
                  ),
                  onChanged: (value) {
                    name = value;
                    setState(() {});
                  }),
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: "Enter Password",
                  labelText: "Password",
                ),
              ),
              const SizedBox(
                height: 40.0,
              ),
              InkWell(
                onTap: () {
                  //Navigator.pushNamed(context, MyRoutes.HomeRoutes);

                  setState(() {
                    changeButton = true;
                  });
                },
                child: AnimatedContainer(
                  duration: const Duration(seconds: 1),
                  width: changeButton ? 50 : 150,
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.cyan,
                      borderRadius:
                          BorderRadius.circular(changeButton ? 50 : 8)),

                  // ignore: avoid_print
                  //Navigator.pushNamed(context, MyRoutes.HomeRoutes);

                  child: changeButton
                      ? const Icon(
                          Icons.done,
                          color: Colors.white,
                        )
                      : const Text(
                          "Login",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                ),
              ),
            ]),
          )
        ],
      )),
    );
  }
}
