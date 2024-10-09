import 'package:flutter/material.dart';
import 'package:flutter_getx_sample/controller/product_builder_controller.dart';
import 'package:flutter_getx_sample/controller/product_controller.dart';
import 'package:flutter_getx_sample/model/product_model.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class ProductScreenGetBuilder extends StatelessWidget {
  /* ProductController2 productController = Get.put(ProductController2()); */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 224, 18, 180),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<ProductGteBuilderController>(
              init: ProductGteBuilderController(),
              builder: (ProductGteBuilderController productController) {
                return Column(
                  children: [
                    Text(
                      'product name: ${productController.productModel.name}',
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      'product price: ${productController.productModel.price}',
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      'product off: ${productController.productModel.off}',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                );
              },
            ),
            ElevatedButton(
                onPressed: () {
                  Get.find<ProductGteBuilderController>().setNewProduct();
                },
                child: const Text(
                  'press',
                  style: TextStyle(fontSize: 24),
                )),
            ElevatedButton(
                onPressed: () {
                  Get.delete<ProductGteBuilderController>();
                },
                child: const Text(
                  'delete controller',
                  style: TextStyle(fontSize: 24),
                )),
          ],
        ),
      ),
    );
  }
}
