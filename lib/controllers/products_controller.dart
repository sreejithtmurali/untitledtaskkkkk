import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:untitled/apiservice/apiservice.dart';
import 'dart:convert';

import 'package:untitled/model/Products.dart';
import 'package:untitled/model/ResponseMain.dart';



class ProductsController extends GetxController {
  var products = <Products>[].obs;
  var isLoading = true.obs;
Apiservice apiservice=Apiservice();


  void fetchProducts() async {
   products.value=(await apiservice.Fetch())!;
   update();
  }

}
