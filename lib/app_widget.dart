import 'package:flutter/material.dart';
import 'package:flutterando_course/app_controller.dart';
import 'package:flutterando_course/home_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
            primaryColor: Colors.pink,
            brightness:  AppController.instance.isDarkTheme ? Brightness.dark : Brightness.light
          ),
          home: const HomePage(),
        );
      },
      animation: AppController.instance
    ,);
  }
}
