import 'package:flutter/material.dart';

class ResponsivePage extends StatefulWidget {
  const ResponsivePage({super.key});

  @override
  State<ResponsivePage> createState() => _ResponsivePageState();
}

class _ResponsivePageState extends State<ResponsivePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Responsive Page')),
      body: Container(
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(height: 150, color: Colors.blue),
            ),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: Container(height: 150, color: Colors.red),
            ),
          ],
        ),
      ),
    );
  }
}
