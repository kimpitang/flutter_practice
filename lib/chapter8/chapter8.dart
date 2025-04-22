import 'package:flutter/material.dart';

class GridViewPage2 extends StatefulWidget {
  const GridViewPage2({super.key});

  @override
  State<GridViewPage2> createState() => _GridViewPage2State();
}

class _GridViewPage2State extends State<GridViewPage2> {
  final postList = [
    {'number': '1', 'colorData': Colors.red},
    {'number': '2', 'colorData': Colors.green},
    {'number': '3', 'colorData': Colors.blue},
    {'number': '4', 'colorData': Colors.yellow},
    {'number': '5', 'colorData': Colors.purple},
    {'number': '6', 'colorData': Colors.orange},
    {'number': '7', 'colorData': Colors.pink},
    {'number': '8', 'colorData': Colors.cyan},
    {'number': '9', 'colorData': Colors.brown},
    {'number': '10', 'colorData': Colors.grey},
    {'number': '11', 'colorData': Colors.teal},
    {'number': '12', 'colorData': Colors.indigo},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Test Title')),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 15.0,
          mainAxisSpacing: 15.0,
        ),
        itemCount: postList.length,
        itemBuilder: (BuildContext con, int index) {
          return postContainer(
            number: postList[index]['number'] as String,
            colorData: postList[index]['colorData'] as Color,
          );
        },
      ),
    );
  }

  Widget postContainer({String number = "0", Color colorData = Colors.amber}) {
    return Container(
      height: 200,
      color: colorData,
      child: Center(child: Text('Box $number')),
    );
  }
}
