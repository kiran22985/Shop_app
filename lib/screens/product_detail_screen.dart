import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/product_provider.dart';

class ProductDetailScreen extends StatelessWidget {
  static const routeName = "/product-detail";
  // final String? title;
  const ProductDetailScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final productID = ModalRoute.of(context)!.settings.arguments as String;
    final loadedProduct = Provider.of<Products>(context).findById(productID);
    return Scaffold(
      appBar: AppBar(
        title: Text(loadedProduct!.title!),
      ),
    );
  }
}
