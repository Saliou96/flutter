import 'package:dio/dio.dart';
import 'package:ecommerce/widgets/home/homebody.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        leading: Icon(Icons.menu),
        flexibleSpace: Image.asset("assets/images/logo.png"),
        // title: Image.asset("assets/images/logo.png"),
        actions: [Icon(Icons.notifications)],
      ),
      body: MyHome(),
    ));
  }
}

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
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
        // print(res);
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
        final product = jsonList[index];
        return Card(
          elevation: 3,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: ListTile(
            leading: Image.network(product['image']), // Display product image
            title: Text(
              product['title'],
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              "\$${product['price'].toStringAsFixed(2)}",
              style: TextStyle(
                fontSize: 16,
                color: Colors.green,
              ),
            ),
            trailing: Icon(Icons.arrow_forward),
          ),
        );
      },
      itemCount: jsonList == null ? 0 : jsonList.length,
    ));
  }
}
