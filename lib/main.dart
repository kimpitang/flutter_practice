import 'package:flutter/material.dart';
import 'chapter1/chapter1.dart';
import 'chapter2/chapter2.dart';
import 'chapter3/chapter3.dart';
import 'chapter4/chapter4.dart';
import 'chapter5/chapter5.dart';
import 'chapter6/chapter6.dart';
import 'chapter7/chapter7.dart';
import 'chapter8/chapter8.dart';
import 'chapter9/chapter9.dart';
import 'chapter10/chapter10.dart';
import 'chapter11/chapter11.dart';
import 'chapter12/chapter12.dart';
import 'chapter13/chapter13.dart';
import 'chapter14/chapter14.dart';

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
      {'title': 'Screen 5', 'widget': const ListViewPage()},
      {'title': 'Screen 6', 'widget': const ListViewPage2()},
      {'title': 'Screen 7', 'widget': const GridViewPage()},
      {'title': 'Screen 8', 'widget': const GridViewPage2()},
      {'title': 'Screen 9', 'widget': const ScrollViewPage()},
      {'title': 'Screen 10', 'widget': const AlignPage()},
      {'title': 'Screen 11', 'widget': const AlertDialogPage()},
      {'title': 'Screen 12', 'widget': const ImageViewPage()},
      {'title': 'Screen 13', 'widget': const ResponsivePage()},
      {'title': 'Screen 14', 'widget': const GradientPage()},
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
                vertical: 10.0, // 터치 영역을 더 넓게 설정
                horizontal: 10.0,
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
