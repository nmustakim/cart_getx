import 'package:e_commerce/models/product.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/cart_controller.dart';
import '../widgets/cart_products.dart';
import 'cart_screen.dart';

class ProductsScreen extends StatelessWidget {
  ProductsScreen({Key? key}) : super(key: key);
  final cartController = Get.put(CartController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,title: const Text('Fruits'),),
        body: Column(
      children: [
        Expanded(
          child: ListView.builder(
              itemCount: Product.products.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    radius: 50,
                    foregroundImage: AssetImage(Product.products[index].imgUrl),
                  ),
                  title: Text(
                    Product.products[index].name,
                  ),
                  subtitle: Text('${Product.products[index].price}\$'),
                  trailing: IconButton(
                      onPressed: () =>
                          cartController.addProduct(Product.products[index]),
                      icon: const Icon(Icons.add_circle,color: Colors.black,)),
                );
              }),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                  child: ElevatedButton(
                      onPressed: () => Get.to(const CartScreen()),
                      child: const Text('Go to cart'))),
            ],
          ),
        ),
      ],
    ));
  }
}
