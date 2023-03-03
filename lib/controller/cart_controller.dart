import 'package:get/get.dart';

import '../../models/product.dart';

class CartController extends GetxController{
  final _products = {}.obs;
get products => _products;
  void addProduct(Product product){
    if(_products.containsKey(product)){
      _products[product] += 1;
    }else{
      _products[product] = 1;
    }
  }
  void removeProduct(Product product) {
    if (_products.containsKey(product) && _products[product] == 1) {
      _products.removeWhere((key, value) => key == product);
    } else {
      _products[product] -= 1;
    }
  }
  get subTotal => _products.entries.map((e) => e.key.price*e.value).toList();

  get total => _products.entries.map((e) => e.key.price*e.value).toList().reduce((value, element) => value+element).toStringAsFixed(2);



}