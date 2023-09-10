import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants/routes.dart';
import '../../../widgets/primarybuton/primarybutton.dart';
import '../../../widgets/top_titles/top_titles.dart';
import '../../home/homescreens.dart';

// ignore: camel_case_types
class Sign_Up extends StatefulWidget {
  const Sign_Up({super.key});

  @override
  State<Sign_Up> createState() => _Sign_UpState();
}

// ignore: camel_case_types
class _Sign_UpState extends State<Sign_Up> {
  bool isShowPassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const top_Title(
                  title: "Create Account",
                  subtitle: "Welcome Back to E-Commerce App"),
              const SizedBox(
                height: 46,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "Name",
                  prefixIcon: Icon(
                    Icons.person_outlined,
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  hintText: "E-mail",
                  prefixIcon: Icon(
                    Icons.email_outlined,
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              TextFormField(
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                  hintText: "Phone",
                  prefixIcon: Icon(
                    Icons.phone,
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              TextFormField(
                obscureText: isShowPassword,
                decoration: InputDecoration(
                    hintText: "Password",
                    prefixIcon: const Icon(
                      Icons.password_outlined,
                    ),
                    suffixIcon: CupertinoButton(
                        onPressed: () {
                          setState(() {
                            isShowPassword = !isShowPassword;
                          });
                        },
                        child: const Icon(
                          Icons.visibility,
                          color: Colors.grey,
                        ))),
              ),
              const SizedBox(
                height: 36,
              ),
              PrimaryButton(
                title: "Create an account",
                onPressed: () {
                  Routes.instance.pushAndRemoveUntill(const HomeScreen(), context);
                },
              ),
              const SizedBox(
                height: 24,
              ),
              const Center(
                  child: Text(
                "Already have an account?",
                style: TextStyle(color: Colors.pink),
              )),
              const SizedBox(
                height: 24,
              ),
              Center(
                child: CupertinoButton(
                    child: Text("Log In",
                        style:
                            TextStyle(color: Theme.of(context).primaryColor)),
                    onPressed: () {
                      Navigator.of(context).pop();
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
