import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spintech/providers/product_provider.dart';
import 'package:spintech/providers/user_provider.dart';

import 'common/bottom_navbar.dart';
import 'tools/cart/cart_screen.dart';
import 'tools/onboarding/onboarding.dart';
import 'tools/product screen/product_screen.dart';
import 'tools/productdetails/product_details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UserProvider()),
        ChangeNotifierProvider(create: (_) => ProductProvider()),
        ChangeNotifierProvider(create: (_) => UserProvider()),
      ],
      child: MaterialApp(
        title: 'Spintech',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        routes: {
          BottomNavbar.routeName: (context) => const BottomNavbar(),
          ProductScreen.routeName: (context) => const ProductScreen(),
          ProductDetails.routeName: (context) => const ProductDetails(),
          CartScreen.routeName: (context) => const CartScreen(),
          BottomNavbar.routeName: (context) => const BottomNavbar(),
        },
        home: BottomNavbar(),
      ),
    );
  }
}
