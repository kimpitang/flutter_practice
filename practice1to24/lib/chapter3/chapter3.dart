import 'package:flutter/material.dart';

class StackWidgetPage extends StatefulWidget {
  const StackWidgetPage({super.key});

  @override
  State<StackWidgetPage> createState() => _StackWidgetPageState();
}

class _StackWidgetPageState extends State<StackWidgetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Test Title')),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.yellow,
        child: Stack(
          children: [
            Container(color: Colors.red, width: 200, height: 200),
            Container(
              color: Colors.blue,
              margin: const EdgeInsets.only(top: 50, left: 50),
              width: 200,
              height: 200,
            ),
            Container(
              color: Colors.green,
              margin: const EdgeInsets.only(top: 100, left: 100),
              width: 200,
              height: 200,
            ),
            Container(
              color: Colors.orange,
              margin: const EdgeInsets.only(top: 150, left: 150),
              width: 200,
              height: 200,
            ),
          ],
        ),
      ),
    );
  }
}
