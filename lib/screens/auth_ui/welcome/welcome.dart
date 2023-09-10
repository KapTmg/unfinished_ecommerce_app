
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants/assets_images.dart';
import '../../../constants/routes.dart';
import '../../../widgets/primarybuton/primarybutton.dart';
import '../../../widgets/top_titles/top_titles.dart';
import '../login/login.dart';

class WelcomeWidget extends StatelessWidget {
  const WelcomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const top_Title(title: "Welcome", subtitle: "Buy your groceries from home"),
                Center(
                  child: Image.asset(
                    AssetsImages.instance.WelcomeImages
                    )
                  ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CupertinoButton(
                      onPressed: (){},
                      padding: EdgeInsets.zero,
                      child: const Icon(
                                    Icons.facebook,
                                    color: Colors.blue,
                                    size: 47,
                                    ),
                    ),
                  CupertinoButton(
                    onPressed: (){},
                    child: Image.asset(
                      AssetsImages.instance.googleLogo,
                      scale: 59.37,
                      ),
                  )
                  ],
                ),
                const SizedBox(height: 14,),
                PrimaryButton(
                  title: "Login",
                  onPressed: () {
                    Routes.instance.push(const LogIn(), context);
                  },
                ),
                const SizedBox(height: 14,),
                PrimaryButton(
                  title: "Sign up",
                  onPressed: (){},
                ),
              ],
            ),
          ),
        ),
    );
  }
}