import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spintech/models/category.dart';

import '../models/product.dart';

class ProductProvider extends ChangeNotifier {
  Product _product = Product(
    id: '',
    description: '',
    image: '',
    price: 0,
    title: '',
    category: Category(id: '', title: ''),
  );

  Product get product => _product;

  void setProduct(String product) {
    _product = Product.fromJson(product);
    notifyListeners();
  }

  void setProductFromModel(Product product) {
    _product = product;

    notifyListeners();
  }
}
