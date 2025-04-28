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

  Future<List<Product>> getProductData() async {
    late List<Product> products;
    try {
      var response = await dio.get("https://dummyjson.com/products");
      products =
          response.data['products']
              .map<Product>((json) => Product.fromJson(json))
              .toList();
    } catch (e) {
      print(e);
    }
    return products;
  }

  Future<void> refreshData() async {
    productList = getProductData();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Swipe Refresh")),
      body: RefreshIndicator(
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: FutureBuilder<List<Product>>(
            future: productList,
            builder: (BuildContext con, AsyncSnapshot snapshot) {
              if (!snapshot.hasData) {
                return const Center(
                  child: CircularProgressIndicator(strokeWidth: 2),
                );
              } else {
                return ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: snapshot.data.length,
                  itemBuilder: (BuildContext cont, int index) {
                    var data = snapshot.data[index];
                    return Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.black26),
                      ),
                      child: Text(
                        "${data.title}(${data.description})",
                        style: const TextStyle(fontSize: 20),
                      ),
                    );
                  },
                );
              }
            },
          ),
        ),
        onRefresh: () => refreshData(),
      ),
    );
  }
}
