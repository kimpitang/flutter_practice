import 'package:flutter/material.dart';

class GradientPage extends StatefulWidget {
  const GradientPage({super.key});

  @override
  State<GradientPage> createState() => _GradientPageState();
}

class _GradientPageState extends State<GradientPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Gradient Page')),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.blue[100] as Color,
              Colors.blue[300] as Color,
              Colors.blue[500] as Color,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: const [0.1, 0.4, 0.7], // colors의 length와 동일해야
          ),
          // RadialGradient(
          //   center: Alignment.center,
          //   radius: 1.0,
          //   colors: [
          //     Colors.blue[100] as Color,
          //     Colors.blue[300] as Color,
          //     Colors.blue[500] as Color,
          //   ],
          // ),
        ),
      ),
    );
  }
}
