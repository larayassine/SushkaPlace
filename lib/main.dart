import 'package:flutter/material.dart';
import 'package:sushka_place/Pages/Intro_page.dart';
import 'package:sushka_place/Pages/menu_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
      routes: {
                '/intropage': (context) => const IntroPage(),
                '/menupage':(context) => const MenuPage(),

      },

    );
  }
}
