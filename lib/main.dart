import 'package:flutter/material.dart';
import 'chapter1/chapter1.dart';
import 'chapter2/chapter2.dart';
import 'chapter3/chapter3.dart';
import 'chapter4/chapter4.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> screens = [
      {'title': 'Screen 1', 'widget': const HelloWorldPage()},
      {'title': 'Screen 2', 'widget': const ColumnRowPage()},
      {'title': 'Screen 3', 'widget': const StackWidgetPage()},
      {'title': 'Screen 4', 'widget': const GestureDetectorPage()},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Demo Home Page')),
      body: SafeArea(
        child: ListView.builder(
          padding: const EdgeInsets.all(8.0), // 전체 패딩 추가
          itemCount: screens.length,
          itemBuilder: (context, index) {
            return ListTile(
              contentPadding: const EdgeInsets.symmetric(
                vertical: 16.0, // 터치 영역을 더 넓게 설정
                horizontal: 16.0,
              ),
              title: Text(
                screens[index]['title'],
                style: const TextStyle(fontSize: 16.0),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => screens[index]['widget'],
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
