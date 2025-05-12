import 'package:flutter/material.dart';

class HelloWorldPage extends StatefulWidget {
  const HelloWorldPage({super.key});

  @override
  State<HelloWorldPage> createState() => _HelloWorldPageState();
}

class _HelloWorldPageState extends State<HelloWorldPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Test title')),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text("Drawer Header Part"),
            ),
            ListTile(title: Text("Menu 1")),
          ],
        ),
      ),
      body: Center(child: Text("Hello World")),
      floatingActionButton: FloatingActionButton(
        onPressed: () => print("clicked"),
        child: const Icon(Icons.mouse),
      ),
    );
  }
}
