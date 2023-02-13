import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopapp/screens/product_detail_screen.dart';

import '../providers/product.dart';

class ProductItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final singleProduct = Provider.of<Product>(context);
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: GridTile(
        child: InkWell(
          onTap: () {
            Navigator.pushNamed(context, ProductDetailScreen.routeName,
                arguments: singleProduct.id);
          },
          child: Image.network(
            singleProduct.imageUrl!,
            fit: BoxFit.cover,
          ),
        ),
        footer: GridTileBar(
          backgroundColor: Colors.black87,
          title: Text(
            singleProduct.title!,
            textAlign: TextAlign.center,
          ),
          leading: IconButton(
              onPressed: () {
                singleProduct.toggleFavouriteStatus();
              },
              icon: Icon(singleProduct.isFavourite
                  ? Icons.favorite
                  : Icons.favorite_border)),
          trailing:
              IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
        ),
      ),
    );
  }
}
