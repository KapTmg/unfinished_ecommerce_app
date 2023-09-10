import 'package:flutter/material.dart';

// ignore: camel_case_types
class top_Title extends StatelessWidget {
  final String title, subtitle;
  const top_Title({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: kTextTabBarHeight + 12,
        ),
        if (title == "Login" || title == "Create Account")
          GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: const Icon(
              Icons.arrow_back_ios,
            ),
          ),
        const SizedBox(
          height: 10,
        ),
        Text(
          title,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          subtitle,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
