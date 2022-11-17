import 'package:flutter/material.dart';

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
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
           // ignore: unnecessary_const
            const child : Column(
            children :[
              TextFormField(decoration: InputDecoration(
                hintText: "Enter Username",
                labelText: "Uaername",
              ),
              onChanged: (value) {
                name = value;
                setState(() {});
              },)
              TextFormField(decoration: InputDecoration(
                hintText: "Enter Password",
                labelText: "Password",
              ),
              ),
              SizedBox(
                height: 40.0,
              ),
              Material(
                color: Colors.cyan,
                borderRadius: BorderRadius.circular(changeButton ? 50 : 8),
                child: InkWell(
                  onTap: () async{
                    setState(() {
                      changeButton = true;
                    });
                    await Future.delayed(const Duration(seconds: 3));
                    // ignore: use_build_context_synchronously
                    await Navigator.pushNamed(context, MyRoutes);
                    setState(() {
                      changeButton = false;
                    });
                  },
                  child: AnimatedContainer(duration: Duration(seconds:1)),
                  width : changeButton ? 50 : 150,
                  height : 50,
                  alignment : Alignment.center,
                  child : changeButton ? Icon(color: Colors.white,)
                  : Text ("Login",
                  style: TextStyle(color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize : 18),
                ),
              ),
              ),
           ),
  
            ],
            ),
          ),
        ],
      ),
      ),
      ));
    
  }

  get newMethod => child;
}
