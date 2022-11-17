import 'package:flutter/material.dart';
import 'package:flutter_application_1/utilits/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  late bool changeButton = false;
  final _formKey = GlobalKey<FormState>();
  get onPressed => null;

  get child => null;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            //ab hua? nhi anS?Ahi ja rhe ho
//kya? whhat..s.a.p.p. ep aaogheo agaya....ho gaya acha ruko ab ek chek dikhata hu phele idhr se run nhi hota tha an? yhn se whatsapp pe aao ek minokk

            child: Column(
              children: [
                Image.asset(
                  "assets/img/hey.png",
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Welcome $name",
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Column(children: [
                  // ignore: prefer_const_constructors
                  TextFormField(
                    // ignore: prefer_const_constructors
                    decoration: InputDecoration(
                      hintText: "Enter Username",
                      labelText: "Uaername",
                    ),
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Enter Password",
                      labelText: "Password",
                    ),
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  //iske baad ka lik loge kyuki abhi jo code hai usme mujhe ye nhi pta ki code kya ruo dikhaata hu
                  Material(
                    color: Colors.cyan,
                    borderRadius: BorderRadius.circular(changeButton ? 50 : 8),
                    child: InkWell(
                      onTap: () async {
                        setState(() {
                          changeButton = true;
                        });
                        await Future.delayed(const Duration(seconds: 3));
                        // ignore: use_build_context_synchronously
                        await Navigator.pushNamed(context, MyRoutes.HomeRoutes);
                        setState(() {
                          changeButton = false;
                        });
                      },
                      child: AnimatedContainer(
                        duration: const Duration(seconds: 1),
                        width: changeButton ? 50 : 150,
                        height: 50,
                        alignment: Alignment.center,
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
                  ),
                ]),
              ],
            ),
          ),
        ),
      ),
    );
  }

  get newMethod => child;
}
