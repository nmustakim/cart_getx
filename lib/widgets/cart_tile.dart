
import 'package:flutter/material.dart';

import '../controller/cart_controller.dart';
import '../models/product.dart';

class CartTile extends StatelessWidget {
  final CartController controller;

  const CartTile({super.key, required this.controller, required this.product, required this.quantity, required this.index});

  final Product product;
  final int quantity;
  final int index;


  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(radius: 50,foregroundImage: AssetImage(product.imgUrl),),
          Text(product.name),
          Row(
            children: [
              IconButton(onPressed: ()=>controller.addProduct(product), icon: const Icon(Icons.add_circle,color: Colors.black)),
              Text(quantity.toString()), IconButton(onPressed: ()=>controller.removeProduct(product), icon: const Icon(Icons.remove_circle,color: Colors.black)),
            ],
          ),


        ],),
    );
  }
}

