import 'package:flutter/material.dart';

class ListViewPage2 extends StatefulWidget {
  const ListViewPage2({super.key});

  @override
  State<ListViewPage2> createState() => _ListViewPage2State();
}

class _ListViewPage2State extends State<ListViewPage2> {
  var postList = [
    {'title': 'Sample Title 1', 'colorData': Colors.lightBlue},
    {'title': 'Sample Title 2', 'colorData': Colors.orange},
    {'title': 'Sample Title 3', 'colorData': Colors.green},
    {'title': 'Sample Title 4', 'colorData': Colors.yellow},
    {'title': 'Sample Title 5', 'colorData': Colors.red},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ListView')),
      body: ListView.builder(
        itemCount: postList.length,
        itemBuilder: (context, index) {
          return postContainer(
            title: postList[index]['title'] as String,
            colorData: postList[index]['colorData'] as Color,
          );
        },
      ),
    );
  }

  Widget postContainer({String title = '', Color colorData = Colors.blue}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            title,
            style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 200,
          color: colorData,
        ),
      ],
    );
  }
}
