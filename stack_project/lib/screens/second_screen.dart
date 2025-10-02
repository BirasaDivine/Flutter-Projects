import 'package:flutter/material.dart';

class MySecondtscreen extends StatelessWidget {
  const MySecondtscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          'Second screen',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          Center(
            child: OutlinedButton(
              onPressed: () => {Navigator.pushNamed(context, "/")},
              child: Text("Go to second screen "),
            ),
          ),
        ],
      ),
    );
  }
}
