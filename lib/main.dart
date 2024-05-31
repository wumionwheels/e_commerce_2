import 'package:e_commerce_2/pages/cart_page.dart';
import 'package:e_commerce_2/pages/intro_page.dart';
import 'package:e_commerce_2/pages/shop_page.dart';
import 'package:e_commerce_2/themes/light_mode.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-commerce App',
      debugShowCheckedModeBanner: false,
      home: const IntroPage(),
      theme: lightMode,
      routes: Map<String, WidgetBuilder>.from(
        {
          '/intro_page': (context) => const IntroPage(),
          '/shop_page': (context) => const ShopPage(),
          '/cart_page': (context) => const CartPage(),
        },
      )
    );
  }
}