import 'package:flutter_getx_sample/model/product_model.dart';
import 'package:get/get.dart';

class ProductGteBuilderController extends GetxController {
  ProductModel productModel =
      ProductModel(name: 'name', price: "price", off: 'off');

  setNewProduct() {
    productModel = ProductModel(name: 'noshmak', price: '5500', off: '0.5%');
    update();
  }

  @override
  void onInit() {
    // TODO: وقتی میخواد بره تو رم و مقدار رم رو اشغال کنه کاری بکنیم مثلا فلان چیز رو مقدار دهی کن
    super.onInit();
    print('onInit');
  }

  @override
  void onReady() {
    // TODO: وقتی که اومدن تو صفحه و رندر شدن فلان کار رو انجام بده
    super.onReady();
    print('onReady');
  }

  @override
  void onClose() {
    // TODO: درست قبل از اینکه کنترلر داخل حافظه پاک بشه صدا زده میشه
    super.onClose();
    print('onClose');
  }
}
