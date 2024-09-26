import 'package:alubank/themes/themes_color.dart';
import 'package:flutter/material.dart';

ThemeData myTheme = ThemeData(
  primarySwatch: ThemesColor.primaryColor,
  primaryColor: ThemesColor.primaryColor,
  brightness: Brightness.dark,
  fontFamily: "Raleway",
  textTheme: TextTheme(
    bodyMedium: TextStyle(
      fontSize: 16,
    ),
    bodyLarge: TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.bold,
    ),
    titleMedium: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
  ),
);
