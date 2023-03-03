import 'package:e_commerce/widgets/cart_products.dart';
import 'package:flutter/material.dart';

import '../widgets/cart_total.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [Expanded(child: CartProducts()),
        Expanded(child: CartTotal())
      ],
    ));
  }
}
