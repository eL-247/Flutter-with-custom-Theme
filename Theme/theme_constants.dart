import 'package:flutter/material.dart';

MaterialColor COLOR_PRIMARY = Colors.deepPurple;
MaterialColor COLOR_SECONDARY = Colors.purple;

// light theme
ThemeData light_Theme = ThemeData(
  brightness: Brightness.light,
  primarySwatch: COLOR_PRIMARY,

  // Text theme ; not working tho
  textTheme: const TextTheme(
    headline4: TextStyle(
      color: Colors.amber,
      fontWeight: FontWeight.bold,
    ),
  ),

  // text field decoration
  inputDecorationTheme: InputDecorationTheme(
    focusColor: Colors.blueGrey,
    filled: true,
    isDense: true,
    // focusedBorder: InputBorder.none,
    // enabledBorder: InputBorder.none,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide.none,
    ),
  ),

  // elevated button
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
          const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        ),
        shape: MaterialStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        )),
  ),
);

// darker theme
ThemeData dark_Theme = ThemeData(
  brightness: Brightness.dark,
  primarySwatch: COLOR_SECONDARY,
  // appBarTheme: AppBarTheme(
  //     // backgroundColor: dark_Theme.primaryColor,
  //     ),

  // text field decoration
  inputDecorationTheme: InputDecorationTheme(
    focusColor: Colors.blueGrey,
    filled: true,
    isDense: true,
    // focusedBorder: InputBorder.none,
    // enabledBorder: InputBorder.none,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide.none,
    ),
  ),

  // elevated button
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
          const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        ),
        shape: MaterialStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        )),
  ),
);
