import 'package:get/get.dart';
import 'package:getx/models/product.dart';

class ShoppingController extends GetxController {
  var products = <Product>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchProducts();
  }

  void fetchProducts() async {
    await Future.delayed(Duration(seconds: 1));
    var productResult = [
      Product(
          id: 1,
          productName: "Some description about product",
          productImage: 'abd',
          productDescription: "Second prod",
          price: 30),
      Product(
          id: 2,
          productName: "Some description about product",
          productImage: '0000',
          productDescription: "First prod",
          price: 38),
      Product(
          id: 3,
          productName: "Some description about product",
          productImage: 'abd',
          productDescription: "Third prod",
          price: 40)
    ];
    products.value = productResult;
  }
}
