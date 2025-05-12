import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

class FuturePage extends StatefulWidget {
  const FuturePage({super.key});

  @override
  State<FuturePage> createState() => _FuturePageState();
}

class _FuturePageState extends State<FuturePage> {
  static Future loadJson() async {
    final String response = await rootBundle.loadString(
      "lib/chapter18/users.json",
    );
    final data = await json.decode(response);
    return data['users'];
  }

  Future userList = loadJson();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Future Builder")),
      body: Container(
        child: FutureBuilder(
          future: userList,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.all(15),
                    child: Text(
                      "${snapshot.data[index]['id']}: ${snapshot.data[index]['username']}",
                    ),
                  );
                },
              );
            } else if (snapshot.hasError) {
              return Center(child: Text("Error: ${snapshot.error}"));
            } else {
              return Center(child: CircularProgressIndicator(strokeWidth: 2));
            }
          },
        ),
      ),
    );
  }
}
