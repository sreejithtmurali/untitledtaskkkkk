import 'package:flutter/material.dart';
import 'package:untitled/model/Products.dart';



class ProductDetailView extends StatelessWidget {
  final Products product;

  ProductDetailView({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('${product!.name}')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image.network('https://mansharcart.com/image/${product.thumb}'),
            SizedBox(height: 16),
            Text('${product!.name}', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Text('${product!.price}', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.red)),
            SizedBox(height: 16),
            Text('Stock Status: ${product.stockStatus}'),
            SizedBox(height: 8),
            Text('Quantity: ${product.quantity}'),
            SizedBox(height: 16),
            Text(product.description ?? 'No description available'),
          ],
        ),
      ),
    );
  }
}
