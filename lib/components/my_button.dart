import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyButton extends StatelessWidget {
  void Function()? onTap;
  Color? color;
  Widget? child;
  BorderRadiusGeometry? borderRadius;
  
  MyButton({
    super.key,
    required this.onTap,
    required this.color,
    required this.child,
    required this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 80,
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: color,
          borderRadius: borderRadius,
        ),
        alignment: Alignment.center,
        child: child,
    ),
    );
  }
}
