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
// Suggested code may be subject to a license. Learn more: ~LicenseLog:1673737885.
          '/shop_page': (context) => const ShopPage(),
        },
      )
    );
  }
}