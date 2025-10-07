import 'package:flutter/material.dart';

void main() => runApp(const PopupMenuApp());

class PopupMenuApp extends StatelessWidget {
  const PopupMenuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('PopupMenuButton Demo')),
        body: Center(
          child: Card(
            elevation: 4,
            margin: const EdgeInsets.all(20),
            child: const Padding(
              padding: EdgeInsets.all(20),
              child: Text('This is a card!'),
            ),
          ),
        ),
      ),
    );
  }
}
