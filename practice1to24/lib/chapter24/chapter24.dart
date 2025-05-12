import 'package:flutter/material.dart';
import 'package:flutter_practice/chapter24/locator/locator.dart';
import 'package:flutter_practice/chapter24/model/album.dart';
import 'package:flutter_practice/chapter24/service/album_service.dart';

class AlbumPage extends StatefulWidget {
  const AlbumPage({super.key});

  @override
  State<AlbumPage> createState() => _AlbumPageState();
}

class _AlbumPageState extends State<AlbumPage> {
  late final AlbumService _service;

  @override
  void initState() {
    super.initState();
    initLocator(); // ✅ 이 페이지가 처음이면 여기서 등록됨
    _service = locator<AlbumService>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Get It 예제")),
      body: FutureBuilder(
        future: _service.fetchAlbums(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<Album>? list = snapshot.data;
            return ListView.builder(
              itemCount: list?.length,
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.all(15),
                  child: Text("${list?[index].id}: ${list?[index].title}"),
                );
              },
            );
          } else if (snapshot.hasError) {
            return Center(child: Text("Error: ${snapshot.error}"));
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
