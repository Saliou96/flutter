import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatefulWidget {
  ProductCard({super.key});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  var jsonList;

  @override
  void initState() {
    super.initState();
    getProducts();
  }

  void getProducts() async {
    try {
      var res = await Dio().get("https://fakestoreapi.com/products");

      if (res.statusCode == 200) {
        setState(() {
          jsonList = res.data as List;
        });
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              return Card(
                child: ListTile(
                  title: Text(jsonList[index]['title']),
                  subtitle: Text(jsonList[index]['price'].toStringAsFixed(2)),
                ),
              );
            },
            itemCount: jsonList == null ? 0 : jsonList.length));

    // return SingleChildScrollView(
    //   scrollDirection: Axis.horizontal,
    //   child: Row(
    //     children: [
    //       Padding(
    //         padding: const EdgeInsets.all(10),
    //         child: Container(
    //           width: MediaQuery.of(context).size.width / 1.5,
    //           height: MediaQuery.of(context).size.height / 2,
    //           decoration: BoxDecoration(
    //               borderRadius: BorderRadius.circular(20), color: Colors.blue),
    //         ),
    //       ),
    //     ],
    //   ),
    // );
  }
}
