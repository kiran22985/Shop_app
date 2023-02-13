import 'package:flutter/material.dart';

import 'package:shopapp/widgets/product_design.dart';

import '../widgets/product_grid.dart';

class ProductsOverviewScreen extends StatelessWidget {
  const ProductsOverviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("MyShop"),
        ),
        body: ProductGrid());
  }
}
