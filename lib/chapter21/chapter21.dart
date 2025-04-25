import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'product.dart';

class SwipeRefreshPage extends StatefulWidget {
  const SwipeRefreshPage({super.key});

  @override
  State<SwipeRefreshPage> createState() => _SwipeRefreshPageState();
}

class _SwipeRefreshPageState extends State<SwipeRefreshPage> {
  late Future<List<Product>> productList;
  Dio dio = Dio();

  @override
  void initState() {
    super.initState();
    productList = getProductData();
  }

  Future<List<Product>> getProductData() async {}

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
