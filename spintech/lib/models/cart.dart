// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'product.dart';

class Cart {
  final String? id;
  final String? userId;
  final DateTime date;
  final List<Product> product;

  Cart({
    required this.id,
    required this.userId,
    required this.date,
    required this.product,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'userId': userId,
      'date': date.millisecondsSinceEpoch,
      'product': product.map((x) => x.toMap()).toList(),
    };
  }

  factory Cart.fromMap(Map<String, dynamic> map) {
    return Cart(
      id: map['id'] != null ? map['id'] as String : null,
      userId: map['userId'] != null ? map['userId'] as String : null,
      date: DateTime.fromMillisecondsSinceEpoch(map['date'] as int),
      product: List<Product>.from(
        (map['product'] as List<int>).map<Product>(
          (x) => Product.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory Cart.fromJson(String source) =>
      Cart.fromMap(json.decode(source) as Map<String, dynamic>);
}
