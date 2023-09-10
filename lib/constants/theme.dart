import 'package:flutter/material.dart';

ThemeData themeData = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    primaryColor: Colors.red,
    inputDecorationTheme: InputDecorationTheme(
        border: outlineInputBorder,
        prefixIconColor: Colors.grey,
        errorBorder: outlineInputBorder,
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        disabledBorder: outlineInputBorder,
        suffixIconColor: Colors.grey),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.red,
        textStyle: const TextStyle(
          fontSize: 18,
        ),
        disabledBackgroundColor: Colors.grey,
      ),
    ));

OutlineInputBorder outlineInputBorder =
    const OutlineInputBorder(borderSide: BorderSide(color: Colors.grey));
