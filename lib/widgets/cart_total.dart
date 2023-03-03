import 'package:e_commerce/controller/cart_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartTotal extends StatelessWidget { CartTotal({Key? key}) : super(key: key);
final CartController cartController = Get.find();
  @override
  Widget build(BuildContext context) {
    return  Obx(() => SizedBox(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Text('Total',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
          Text(cartController.total,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
        ],),
      ),
    ));
  }
}
