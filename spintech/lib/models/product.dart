// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import './category.dart';

class Product {
  final String? id;
  final int? price;
  final String? title;
  final String? description;
  final String? image;
  final Category? category;

  Product({
    required this.id,
    required this.price,
    required this.title,
    required this.description,
    this.category,
    required this.image,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'price': price,
      'title': title,
      'description': description,
      'image': image,
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      id: map['id'] != null ? map['id'] as String : null,
      price: map['price'] != null ? map['price'] as int : null,
      title: map['title'] != null ? map['title'] as String : null,
      description:
          map['description'] != null ? map['description'] as String : null,
      image: map['image'] != null ? map['image'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Product.fromJson(String source) =>
      Product.fromMap(json.decode(source) as Map<String, dynamic>);
}
