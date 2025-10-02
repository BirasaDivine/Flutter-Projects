import 'package:flutter/material.dart';
import 'package:stack_project/screens/first_screen.dart';
import 'package:stack_project/screens/second_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => const Myfirstscreen(),
        "/second": (context) => const MySecondtscreen(),
      },
    );
  }
}
