import 'package:flutter_practice/chapter22/data_provider/api_provider.dart';
import 'package:flutter_practice/chapter22/model/albums.dart';

class AlbumRepository {
  final AlbumApiProvider _albumApiProvider = AlbumApiProvider();

  Future<Albums> fetchAlbumList() async => _albumApiProvider.fetchAlbumList();
}
