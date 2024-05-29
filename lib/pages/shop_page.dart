import 'package:flutter/material.dart';


class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Theme.of(context).colorScheme.secondary,
        backgroundColor: Colors.transparent,
        title: const Text('Shop'),
      ),
      
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: const Column(
        children: [
          
        ],
      ),
    drawer: Drawer(), 
    );
  }
}