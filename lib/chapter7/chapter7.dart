import 'package:flutter/material.dart';

class GridViewPage extends StatefulWidget {
  const GridViewPage({super.key});

  @override
  State<GridViewPage> createState() => _GridViewPageState();
}

class _GridViewPageState extends State<GridViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Test Title')),
      body: GridView(
        scrollDirection: Axis.horizontal,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 15.0,
          mainAxisSpacing: 12.0,
        ),
        children: [
          postContainer(number: "1", colorData: Colors.red),
          postContainer(number: "2", colorData: Colors.green),
          postContainer(number: "3", colorData: Colors.blue),
          postContainer(number: "4", colorData: Colors.yellow),
          postContainer(number: "5", colorData: Colors.purple),
          postContainer(number: "6", colorData: Colors.orange),
          postContainer(number: "7", colorData: Colors.pink),
          postContainer(number: "8", colorData: Colors.cyan),
          postContainer(number: "9", colorData: Colors.brown),
          postContainer(number: "10", colorData: Colors.grey),
          postContainer(number: "11", colorData: Colors.teal),
          postContainer(number: "12", colorData: Colors.indigo),
        ],
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
