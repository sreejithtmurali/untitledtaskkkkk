import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/apiservice/apiservice.dart';
import 'package:untitled/view/products_view.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
 // Apiservice apiservice=Apiservice();
  @override
  Widget build(BuildContext context) {
   // apiservice.Fetch();
    return GetMaterialApp(
      title: 'Product App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProductsView(),
    );
  }
}
