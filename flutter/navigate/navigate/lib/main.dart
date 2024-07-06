import 'package:flutter/material.dart';
import 'package:navigate/pages/home.dart';
import 'package:navigate/pages/about.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Home(),
      routes: {
        '/homepage': (context) => Home(),
        '/aboutpage': (context) => About(),
      },
    );
  }
}
