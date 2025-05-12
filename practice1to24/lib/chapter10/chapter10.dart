import 'package:flutter/material.dart';

class AlignPage extends StatefulWidget {
  const AlignPage({super.key});

  @override
  State<AlignPage> createState() => _AlignPageState();
}

class _AlignPageState extends State<AlignPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Align Widget')),
      body: Container(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                width: 100,
                height: 100,
                alignment: Alignment.center,
                color: Colors.amber,
                child: Text('HELLO'),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: 100,
                height: 100,
                alignment: Alignment.center,
                color: Colors.blue,
                child: Text('HELLO'),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                width: 100,
                height: 100,
                alignment: Alignment.center,
                color: Colors.green,
                child: Text('HELLO'),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                width: 100,
                height: 100,
                alignment: Alignment.center,
                color: Colors.amber,
                child: Text('HELLO'),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                width: 100,
                height: 100,
                alignment: Alignment.center,
                color: Colors.blue,
                child: Text('HELLO'),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                width: 100,
                height: 100,
                alignment: Alignment.center,
                color: Colors.green,
                child: Text('HELLO'),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                width: 100,
                height: 100,
                alignment: Alignment.center,
                color: Colors.amber,
                child: Text('HELLO'),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: 100,
                height: 100,
                alignment: Alignment.center,
                color: Colors.blue,
                child: Text('HELLO'),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                width: 100,
                height: 100,
                alignment: Alignment.center,
                color: Colors.green,
                child: Text('HELLO'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
