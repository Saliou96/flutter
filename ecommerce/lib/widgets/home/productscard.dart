import 'dart:convert';
import 'package:ecommerce/model/product.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ProductCard extends StatelessWidget {
  ProductCard({super.key});

  List<Product> products = [];

  Future getProducts() async {
    var res = await http.get(Uri.https('fakestoreapi.com', 'products'));
    var jsonData = jsonDecode(res.body);
    for (var item in jsonData['']) {
      final product = Product(title: item['title'], price: item["price"]);
      products.add(product);
    }

    print(products.length);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getProducts(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      width: MediaQuery.of(context).size.width / 1.5,
                      height: MediaQuery.of(context).size.height / 2,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.blue),
                    ),
                  ),
                ],
              ),
            );
          }
        });
  }
}
