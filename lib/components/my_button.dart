import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyButton extends StatelessWidget {
  void Function()? onTap;
  Color? color;
  Widget? child;
  BorderRadiusGeometry? borderRadius;
  EdgeInsetsGeometry? padding;
  double? width;
  
  MyButton({
    super.key,
    required this.onTap,
    required this.color,
    required this.child,
    required this.borderRadius,
    required this.padding,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        padding: padding,
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
