import 'package:e_commerce_2/components/my_button.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.surface,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // logo
                  Icon(
                    Icons.shopping_cart_rounded, 
                    color: Theme.of(context).colorScheme.secondary, 
                    size: 72,
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  // title
                  Text(
                    "Minimal Shop",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),

                  // subtitle
                  Text(
                    "Premium quality products",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                  const SizedBox(
                    height: 64,
                  ),

                  // button
                  MyButton(
                    onTap: () =>
                      Navigator.pushNamed(context, '/shop_page'),
                    color: Theme.of(context).colorScheme.primary, 
                    child: Icon(
                      Icons.arrow_forward_rounded,
                      size: 24,
                      color: Theme.of(context).colorScheme.onPrimary,
                    )
                  )
                ]
              ),
          ),
        ));
  }
}
