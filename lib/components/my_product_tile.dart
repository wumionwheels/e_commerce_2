import 'package:e_commerce_2/components/my_button.dart';
import 'package:e_commerce_2/models/product.dart';
import 'package:e_commerce_2/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyProductTile extends StatelessWidget {
  final Product product;
  const MyProductTile({
    super.key, 
    required this.product
  });

  // add to cart
  void addToCart(BuildContext context) {
    // show dialog
    showDialog(
      context: context, 
      builder: (context) => AlertDialog(
        title: Text(
          'Add this item to your cart?',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Theme.of(context).colorScheme.primary,
          ),
          textAlign: TextAlign.center,
        ),
        // Action buttons
        actions: [
          // cancel button
          MaterialButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            elevation: 0,
            padding: const EdgeInsets.only(
              left: 40,
              right: 40,
              top: 24,
              bottom: 24
            ),
            color: Colors.grey.shade200,
            textColor: Theme.of(context).colorScheme.secondary,
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          // add button
          MaterialButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            elevation: 0,
            padding: const EdgeInsets.only(
              left: 64,
              right: 64,
              top: 24,
              bottom: 24
            ),
            color: Theme.of(context).colorScheme.primary,
            textColor: Theme.of(context).colorScheme.onPrimary,
            onPressed: () {
            // close dialog
            Navigator.pop(context);
            // add to cart
            context.read<Shop>().addToCart(product);

            // show snackbar
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                backgroundColor: Colors.green,
                content: Text('Item added to cart'),
              ),
            );
          },
          child: Text('Add',)
          // add button
          
          ),
        ],
      )
    );

  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240,
      padding: const EdgeInsets.only(
        top: 0,
        bottom: 0,
        left: 16,
        right: 0,
      ),
      margin: const EdgeInsets.only(
        right: 16,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // product image
              AspectRatio(
                aspectRatio: 1,
                child: Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.onPrimary,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  padding: const EdgeInsets.all(24),
                  child: const Icon(
                    Icons.favorite_rounded,
                    size: 80,
                  ),
                ),
              ),

              // product name
              Text(
                product.name,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
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
            ],
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
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                  ),
                  onTap: () => addToCart(context),
                  color: Theme.of(context).colorScheme.primary,
                  child: Icon(
                    Icons.add_rounded,
                    color: Theme.of(context).colorScheme.onPrimary,
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
