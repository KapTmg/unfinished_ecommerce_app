import 'package:ecommerce_app/constants/constats.dart';
import 'package:ecommerce_app/firebase_helper/firebase_auth_helper/firebase_auth_helper.dart';
import 'package:ecommerce_app/screens/home/homescreens.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants/routes.dart';
import '../../../widgets/primarybuton/primarybutton.dart';
import '../../../widgets/top_titles/top_titles.dart';
import '../singup/sign_up.dart';


class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  TextEditingController email = TextEditingController();
  TextEditingController password= TextEditingController();
  bool isShowPassword = true;
  
  bool get isLogined => false;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Expanded(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const top_Title(
                    title: "Login", subtitle: "Welcome Back to E-Commerce App"),
                const SizedBox(
                  height: 40,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: "E-mail",
                    prefixIcon: Icon(
                      Icons.email_outlined,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
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
                          padding: EdgeInsets.zero,
                          child: const Icon(
                            Icons.visibility,
                            color: Colors.grey,
                          ))),
                ),
                const SizedBox(
                  height: 15,
                ),
                PrimaryButton(
                  title: "Login",
                  onPressed: () {
                  bool isValidated =  loginValidation(email.text, password.text);
                  if(isValidated){
                    FirebaseAuthHelper.instance.login(email.text, password.text, context);
                    if(isLogined){
                      Routes.instance.pushAndRemoveUntill(const HomeScreen(), context);
                    }
                  }
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                const Center(
                    child: Text(
                  "Don't have an account?",
                  style: TextStyle(color: Colors.pink),
                )),
                const SizedBox(
                  height: 14,
                ),
                // ignore: sized_box_for_whitespace
                Container(
                  height: 50,
                  // color: Colors.red,
                  child: Center(
                    child: CupertinoButton(
                        child: Text("Create an account",
                            style: TextStyle(
                              color: Theme.of(context).primaryColor,
                            )),
                        onPressed: () {
                          Routes.instance.push(const Sign_Up(), context);
                        }),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
