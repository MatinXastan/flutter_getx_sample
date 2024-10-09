import 'package:flutter_getx_sample/model/product_model.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  Rx<ProductModel> productModel;

  ProductController({required this.productModel});
}

class ProductController2 extends GetxController {
  Rx<ProductModel> productModel =
      ProductModel(name: 'name', price: "price", off: 'off').obs;
}
