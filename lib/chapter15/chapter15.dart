import 'package:flutter/material.dart';

class ButtonPage extends StatefulWidget {
  const ButtonPage({super.key});

  @override
  State<ButtonPage> createState() => _ButtonPageState();
}

class _ButtonPageState extends State<ButtonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Button Page')),
      body: Container(
        child: Column(
          children: [
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber,
                  textStyle: TextStyle(fontSize: 20),
                ),
                onPressed: () => print("Elavated button"),
                child: const Text("Elavated Button"),
              ),
            ),
            Center(
              child: TextButton(
                onPressed: () => print("Text button"),
                child: const Text("Text Button"),
              ),
            ),
            Center(
              child: OutlinedButton(
                onPressed: () => print("Outlined button"),
                child: const Text("Outlined Button"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
