import 'package:e_commerce/models/product.dart';
import 'package:e_commerce/widgets/cart_tile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/cart_controller.dart';

class CartProducts extends StatelessWidget {
 CartProducts({Key? key}) : super(key: key);
  final CartController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(centerTitle: true,title: const Text('Cart'),),
      body: Obx(() => SizedBox(
        height: 600,
        child: ListView.builder(itemCount:controller.products.length,itemBuilder: (context,index){
          Product product = controller.products.keys.toList()[index];
          int quantity = controller.products.values.toList()[index];
          return CartTile(controller: controller, product: product, quantity: quantity, index: index);
        }),
      ),
      )
    );
  }
}
