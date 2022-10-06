import 'package:flutter/material.dart';
import 'package:pagescroll/Responsive/layout.dart';
import 'package:pagescroll/Theme/theme_constants.dart';
import 'package:pagescroll/Theme/theme_manager.dart';
import 'package:pagescroll/consts/colors.dart';
import 'package:pagescroll/pipePage.dart';
import 'package:pagescroll/widgets/widgets.dart';

import 'Test.dart';

void main() {
  runApp(const MyApp());
}

ThemeManager themeManager = ThemeManager();

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void dispose() {
    themeManager.removeListener(themeListener);
    super.dispose();
  }

  @override
  void initState() {
    themeManager.addListener(themeListener);
    super.initState();
  }

  themeListener() {
    if (mounted) {
      setState(() {});
    }
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: light_Theme,
      darkTheme: dark_Theme,
      themeMode: themeManager.thememode,

      // the widget passed should never be a const fot the dark and light theme to work correctly
      home: Test_Widget(),
    );
  }
}
