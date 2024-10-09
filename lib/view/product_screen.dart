import 'package:flutter/material.dart';
import 'package:flutter_getx_sample/controller/product_controller.dart';
import 'package:flutter_getx_sample/model/product_model.dart';
import 'package:flutter_getx_sample/view/product_screen%20getx.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class ProductScreen extends StatelessWidget {
  ProductController productController = Get.put(ProductController(
      productModel:
          ProductModel(name: 'Ps4', price: "30000000", off: '1%').obs));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
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
                      val!.name = 'cake chize';
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
                  Get.back();
                  //counter = counter + 1;
                },
                child: const Text(
                  'back',
                  style: TextStyle(fontSize: 24),
                )),
            ElevatedButton(
                onPressed: () {
                  Get.to(ProductScreenGetx());
                  //counter = counter + 1;
                },
                child: const Text(
                  'Go',
                  style: TextStyle(fontSize: 24),
                )),
          ],
        ),
      ),
    );
  }
}
