import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pagescroll/Theme/theme_manager.dart';
import 'package:pagescroll/main.dart';

class Test_Widget extends StatelessWidget {
  const Test_Widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    bool isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Dark Theme toggler'),
        actions: [
          Switch(
            value: themeManager.thememode == ThemeMode.dark,
            onChanged: (value) {
              themeManager.toggleTheme(value);
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Header',
              style: textTheme.headline4!.copyWith(
                color: isDark ? Colors.white : Colors.black,
              ),
            ),
            const SizedBox(height: 10),
            Text('Subtitle', style: textTheme.subtitle2!),
            const SizedBox(height: 10),

            // text
            TextField(cursorColor: !isDark ? Colors.blue : Colors.amber),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.theater_comedy),
              label: const Text('toggle Theme'),
            ),
          ],
        ),
      ),
    );
  }
}
