import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {
  const ListViewPage({super.key});

  @override
  State<ListViewPage> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ListView')),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          postContainer(title: 'Title 1', colorData: Colors.lightBlue),
          postContainer(title: 'Title 2', colorData: Colors.orange),
          postContainer(title: 'Title 3', colorData: Colors.green),
          postContainer(title: 'Title 4', colorData: Colors.yellow),
          postContainer(title: 'Title 5', colorData: Colors.red),
        ],
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
