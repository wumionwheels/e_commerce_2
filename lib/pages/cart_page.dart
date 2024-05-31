import 'package:e_commerce_2/components/my_drawer.dart';
import 'package:flutter/material.dart';


class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Theme.of(context).colorScheme.secondary,
        backgroundColor: Colors.transparent,
        title: const Text('Cart'),
      ),
      drawer: const MyDrawer(), 
      backgroundColor: Theme.of(context).colorScheme.surface,
      
    );
  }
}