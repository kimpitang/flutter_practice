import 'package:flutter/material.dart';
import 'package:flutter_practice/chapter16/second.dart';

class NavigatorPage extends StatefulWidget {
  const NavigatorPage({super.key});

  @override
  State<NavigatorPage> createState() => _NavigatorPageState();
}

class _NavigatorPageState extends State<NavigatorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Button Page')),
      body: Center(
        child: GestureDetector(
          onTap:
              () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => SecondView()),
              ),
          child: Container(
            padding: const EdgeInsets.all(15),
            color: Colors.blue,
            child: const Text("Get Started"),
          ),
        ),
      ),
    );
  }
}
