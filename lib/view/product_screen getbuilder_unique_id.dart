import 'package:flutter/material.dart';
import 'package:flutter_getx_sample/controller/product_builder_controller.dart';
import 'package:flutter_getx_sample/controller/product_builder_unique_ud_controller.dart';
import 'package:flutter_getx_sample/controller/product_controller.dart';
import 'package:flutter_getx_sample/model/product_model.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class ProductScreenGetBuilderUniqueId extends StatelessWidget {
  /* ProductController2 productController = Get.put(ProductController2()); */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Get.find<ProductGteBuilderUniqueIdController>()
                  .setNewProduct(index);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(border: Border.all()),
                child: GetBuilder<ProductGteBuilderUniqueIdController>(
                  id: index,
                  init: ProductGteBuilderUniqueIdController(),
                  builder:
                      (ProductGteBuilderUniqueIdController productController) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
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
              ),
            ),
          );
        },
      )),
    );
  }
}
