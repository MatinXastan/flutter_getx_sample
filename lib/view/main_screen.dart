import 'package:flutter/material.dart';
import 'package:flutter_getx_sample/controller/product_controller.dart';
import 'package:flutter_getx_sample/model/product_model.dart';
import 'package:flutter_getx_sample/view/product_screen.dart';
import 'package:get/get.dart';

class MainScreen extends StatelessWidget {
  //var counter = 0.obs;

  ProductController productController = Get.put(ProductController(
      productModel:
          ProductModel(name: 'pofak', price: '1million', off: '50%').obs));

  RxBool statuse = false.obs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() {
              return Column(
                children: [
                  Text(
                    'product name: ${productController.productModel.value.name}',
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    'product price: ${productController.productModel.value.price}',
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    'product off: ${productController.productModel.value.off}',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              );
            }),
            ElevatedButton(
                onPressed: () {
                  //TODO: واسه جلسه 67 بودش
                  productController.productModel.update(
                    (val) {
                      val!.name = 'chitoz 111111111111';
                      val!.price = '2 million';
                      val!.off = '40%';
                    },
                  );

                  //counter = counter + 1;
                },
                child: const Text(
                  'press',
                  style: TextStyle(fontSize: 24),
                )),
            ElevatedButton(
                onPressed: () {
                  Get.to(ProductScreen());

                  //counter = counter + 1;
                },
                child: const Text(
                  'GO',
                  style: TextStyle(fontSize: 24),
                )),
          ],
        ),
      ),
    );
  }
}
