// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'cart.dart';
import 'product.dart';

class User {
  final String? id;
  final String? email;
  final String? password;
  final Map<String, dynamic>? name;
  final Map<String, dynamic>? address;
  final String? phone;
  final List<dynamic>? cart;

  User({
    required this.id,
    required this.email,
    required this.password,
    required this.name,
    this.address,
    this.phone,
    this.cart,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'email': email,
      'password': password,
      'name': name,
      'address': address,
      'phone': phone,
      'cart': cart,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
        id: map['id'] != null ? map['id'] as String : null,
        email: map['email'] != null ? map['email'] as String : null,
        password: map['password'] != null ? map['password'] as String : null,
        name: Map<String, dynamic>.from(
          (map['name'] as Map<String, dynamic>),
          // address: Map<String, dynamic>.from((map['address'] as Map<String, dynamic>),
          // phone: map['phone'] != null ? map['phone'] as String : null,
          // cart: List<dynamic>.from((map['cart'] as List<dynamic>),
        ));
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) =>
      User.fromMap(json.decode(source) as Map<String, dynamic>);
}
