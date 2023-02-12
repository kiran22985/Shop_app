import 'package:flutter/material.dart';
import 'package:shopapp/utils/product_data.dart';
import 'package:shopapp/widgets/product_design.dart';

class ProductsOverviewScreen extends StatelessWidget {
  const ProductsOverviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("MyShop"),
        ),
        body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10),
          itemCount: productsData.length,
          itemBuilder: (BuildContext context, index) {
            return ProductItem(
              title: productsData[index].title,
              imageUrl: productsData[index].imageUrl,
              id: productsData[index].id,
            );
          },
        ));
  }
}
