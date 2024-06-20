import 'package:e_commerce_2/components/my_drawer.dart';
import 'package:e_commerce_2/components/my_product_tile.dart';
import 'package:e_commerce_2/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {

    //access products in shop
    final Product = context.watch<Shop>().shop;

    return Scaffold(
      appBar: AppBar(
        foregroundColor: Theme.of(context).colorScheme.secondary,
        backgroundColor: Colors.transparent,
        title: const Text('Shop'),
      ),
      drawer: const MyDrawer(), 
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // text
          Center(child: Text(
            'Pick from a selected list of premium products',
            style: TextStyle(
              fontSize: 16,
              color: Theme.of(context).colorScheme.secondary,
            ),
          )
          ),
          const SizedBox(height: 16,),
          // search bar
          const SearchBar(
            shadowColor: WidgetStatePropertyAll(Colors.transparent),
            elevation: WidgetStatePropertyAll(0),
            backgroundColor: WidgetStatePropertyAll(Colors.white),
            hintText: 'Search Product',
          ),
          const SizedBox(height: 24,),
          //list of products
          SizedBox(
          height: 400,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: Product.length,
            itemBuilder: (context, index) {
              //get product from shop
              final product = Product[index];
          
              //return product tile
              return MyProductTile(product: product);
              
            },
          ),
        ),
        ]
      )
    );
  }
}