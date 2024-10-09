import 'package:flutter/material.dart';
import 'package:flutter_getx_sample/controller/product_controller.dart';
import 'package:flutter_getx_sample/model/product_model.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class ProductScreenGetx extends StatelessWidget {
  /* ProductController2 productController = Get.put(ProductController2()); */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 6, 221, 56),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetX(
              autoRemove: true,
              dispose: (state) {
                state.dispose();
              },
              init: ProductController2(),
              builder: (ProductController2 productController) {
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
              },
            ),
            ElevatedButton(
                onPressed: () {
                  Get.find<ProductController2>().productModel.update(
                    (val) {
                      val!.name = 'shir';
                      val!.price = '2000';
                      val!.off = '20%';
                    },
                  );
                },
                child: const Text(
                  'press',
                  style: TextStyle(fontSize: 24),
                )),
          ],
        ),
      ),
    );
  }
}
