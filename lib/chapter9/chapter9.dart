import 'package:flutter/material.dart';

class ScrollViewPage extends StatefulWidget {
  const ScrollViewPage({super.key});

  @override
  State<ScrollViewPage> createState() => _ScrollViewPageState();
}

class _ScrollViewPageState extends State<ScrollViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ScrollView')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 300,
              color: Colors.red,
              child: const Center(child: Text('Container 1')),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 300,
              color: Colors.green,
              child: const Center(child: Text('Container 2')),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 300,
              color: Colors.blue,
              child: const Center(child: Text('Container 3')),
            ),
          ],
        ),
      ),
    );
  }
}

// 화면을 분리해서 각각 스크롤 기능을 넣을 경우
// SingleChildScrollView에 SizeBox를 사용하여
// 각각의 스크롤을 구현할 수 있다.
