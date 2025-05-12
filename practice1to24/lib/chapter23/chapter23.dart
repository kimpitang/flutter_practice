import 'package:flutter/material.dart';
import 'package:flutter_practice/chapter23/view/album_view.dart';
import 'package:flutter_practice/chapter23/provider/album_provider.dart';
import 'package:provider/provider.dart';

class ProviderPage extends StatefulWidget {
  const ProviderPage({super.key});

  @override
  State<ProviderPage> createState() => _ProviderPageState();
}

class _ProviderPageState extends State<ProviderPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider<AlbumProvider>(
        create: (context) => AlbumProvider(),
        child: const AlbumView(),
      ),
    );
  }
}
