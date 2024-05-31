import 'package:e_commerce_2/components/my_button.dart';
import 'package:e_commerce_2/models/product.dart';
import 'package:flutter/material.dart';

class MyProductTile extends StatelessWidget {
  final Product product;
  const MyProductTile({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 16,
        bottom: 0,
        left: 16,
        right: 0,
      ),
      margin: const EdgeInsets.only(right: 16, left: 16,),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // product image
          // Image.network(product.image),

          // product name
          Text(
            product.name,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          const SizedBox(height: 16),

          // product description
          Text(
            product.description,
            style: TextStyle(
              fontSize: 14,
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),

          // product price + add to cart button
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '\$${product.price}',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              MyButton(
                onTap: () {}, 
                color: Theme.of(context).colorScheme.primary, 
                child: Icon(
                  Icons.add_rounded,
                  color: Theme.of(context).colorScheme.onPrimary,
                )
              )
            ],
          ),
        ],
      ),
    );
  }
}
