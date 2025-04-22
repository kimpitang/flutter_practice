import 'package:flutter/material.dart';

class ImageViewPage extends StatefulWidget {
  const ImageViewPage({super.key});

  @override
  State<ImageViewPage> createState() => _ImageViewPageState();
}

class _ImageViewPageState extends State<ImageViewPage> {
  String url =
      'https://cdn.incross.com/cafe/images/%EB%B0%94%EB%8B%90%EB%9D%BC%EB%9D%BC%EB%96%BC.png';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Image View Page')),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Image(
          height: 400,
          image: NetworkImage(url),
          fit: BoxFit.fitHeight,
        ),
      ),
    );
  }
}
