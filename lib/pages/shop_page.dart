import 'package:e_commerce_2/components/my_drawer.dart';
import 'package:e_commerce_2/components/my_product_tile.dart';
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
      drawer: const MyDrawer(), 
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          children: [
            Text(
              'Shop on the go like a pro',
              style: TextStyle(
                fontSize: 18,
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SearchBar(
                hintText: 'Search',
                shadowColor: const WidgetStatePropertyAll(Colors.transparent),
                backgroundColor: WidgetStatePropertyAll(
                  Theme.of(context).colorScheme.onPrimary
                ),
                ),
            ),
            ListView(
              children: const [],
            )
            
          ],
        ),
      ),
    
    );
  }
}