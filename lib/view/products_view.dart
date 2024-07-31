import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/products_controller.dart';
import 'product_detail_view.dart';

class ProductsView extends StatelessWidget {
  final ProductsController controller = Get.put(ProductsController());


  @override
  Widget build(BuildContext context) {
    controller.fetchProducts();
    return Scaffold(
      appBar: AppBar(title: Text('Products')),
      body: Obx(() {

          return GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemCount: controller.products.length,
            itemBuilder: (context, index) {
              var product = controller.products[index];
              return GestureDetector(
                onTap: () {
                  Get.to(() => ProductDetailView(product: product));
                },
                child: Card(
                  child: Column(
                    children: [
                      //Image.network('https://mansharcart.com/image/${product.thumb}'),
                      Text('${product!.name}'),
                      Text('${product!.price}'),
                    ],
                  ),
                ),
              );
            },
          );

      }),
    );
  }
}
