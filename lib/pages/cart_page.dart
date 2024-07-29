import 'package:e_commerce_2/components/my_button.dart';
import 'package:e_commerce_2/components/my_drawer.dart';
import 'package:e_commerce_2/models/product.dart';
import 'package:e_commerce_2/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  // remove item from cart
  void removeFromCart(BuildContext context, Product item) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text(
                'Remove this item from your cart?',
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
                      left: 28, right: 28, top: 24, bottom: 24),
                  color: Theme.of(context).colorScheme.surface,
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
                        left: 48, right: 48, top: 24, bottom: 24),
                    color: Theme.of(context).colorScheme.primary,
                    textColor: Theme.of(context).colorScheme.onPrimary,
                    onPressed: () {
                      // close dialog
                      Navigator.pop(context);
                      // add to cart
                      context.read<Shop>().removeFromCart(item);

                      // show snackbar
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          backgroundColor: Colors.green,
                          content: Text('Item removed from cart'),
                        ),
                      );
                    },
                    child: const Text(
                      'Remove',
                    )
                    // add button

                    ),
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    final cart = context.watch<Shop>().cart;

    return Scaffold(
      appBar: AppBar(
        foregroundColor: Theme.of(context).colorScheme.secondary,
        backgroundColor: Colors.transparent,
        title: const Text('Cart'),
        centerTitle: true,
      ),
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Column(
        children: [
          // cart list
          Expanded(
            child: 
            cart.isEmpty? 
            Center(child: Text(
              "Your cart is empty",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Theme.of(context).colorScheme.secondary,
              ),
              ),
            ) 
            : 
            ListView.builder(
              itemCount: cart.length,
              itemBuilder: (context, index) {
                // get item in cart
                final Product = cart[index];

                // return cart tile
                return ListTile(
                    title: Text(
                      Product.name,
                      style: TextStyle(
                        fontSize: 16,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                    ),
                    subtitle: Text(
                      '\$${Product.price}',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    trailing: IconButton(
                        icon: Icon(
                          Icons.delete_rounded,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        onPressed: () => removeFromCart(context, Product)
                    )
                  );
          
              },
            ),
          ),

          // Checkout button
          MyButton(
            onTap: () {
              showDialog(
                context: context, 
                builder: (context) => AlertDialog(
                  title: Text(
                    "This will soon be implemented, thanks for shoppping with us",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    textAlign: TextAlign.center,
                  ),
                )
              );
            }, 
            color: Theme.of(context).colorScheme.onPrimary, 
            borderRadius: BorderRadius.circular(16), 
            padding: const EdgeInsets.only(
              left: 40, 
              right: 40, 
              top: 24, 
              bottom: 24
            ), 
            width: 192, 
            child: Text(
              'Checkout',
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            )
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
