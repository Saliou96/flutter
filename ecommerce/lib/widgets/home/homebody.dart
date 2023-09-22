import 'package:ecommerce/widgets/home/categorycard.dart';
import 'package:ecommerce/widgets/home/productscard.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Category",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            CategoryCard(),
            SizedBox(height: 10),
            Text(
              "Products",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            ProductCard()
          ],
        ),
      ),
    );
  }
}
