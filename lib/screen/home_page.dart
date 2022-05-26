import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:getx/controllers/cart_controller.dart';
import 'package:getx/controllers/shopping_controller.dart';

class HomePage extends StatelessWidget {
  final shoppingController = Get.put(ShoppingController());
  final cartController = Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: GetX<ShoppingController>(builder: (controller) {
                return ListView.builder(
                  itemCount: controller.products.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                        child: ListTile(
                      trailing: Column(
                        children: [
                          Text('${controller.products[index].price}'),
                          ElevatedButton(
                              onPressed: () {
                                cartController
                                    .addToCart(controller.products[index]);
                              },
                              child: Text('Add cart')),
                        ],
                      ),
                      title: Text(
                          "${controller.products[index].productDescription}"),
                      subtitle:
                          Text('${controller.products[index].productName}'),
                    ));
                    
                  },
                );
              }),
            ),GetX<CartController>(
              
              builder: (controller) {
                return Text('Total amount : ${controller.totalPrice}');
              }
            )
          ],
        ),
      ),
    );
  }
}
