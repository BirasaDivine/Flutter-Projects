import 'package:flutter/material.dart';

void main() {
  runApp(const Myfirstscreen());
}

class Myfirstscreen extends StatelessWidget {
  const Myfirstscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text(
          'First Screen',
          style: TextStyle(
            color: const Color.fromARGB(255, 44, 3, 148),
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: OutlinedButton(
          onPressed: () => {Navigator.pushNamed(context, "/second")},
          child: Text("Go to second screen "),
        ),
      ),
    );
  }
}
