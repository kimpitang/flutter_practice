import 'package:flutter/material.dart';

class GestureDetectorPage extends StatefulWidget {
  const GestureDetectorPage({super.key});

  @override
  State<GestureDetectorPage> createState() => _GestureDetectorPageState();
}

class _GestureDetectorPageState extends State<GestureDetectorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Test Title')),
      body: Column(
        children: [
          Center(
            child: TextButton(
              onPressed: () => print("TextButton clicked"),
              child: const Text("Text Button"),
            ),
          ),
          Center(
            child: GestureDetector(
              onTap: () => print("GestureDetector used"),
              child: Container(color: Colors.amber, width: 200, height: 200),
            ),
          ),
        ],
      ),
    );
  }
}
