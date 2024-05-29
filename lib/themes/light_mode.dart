import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  colorScheme: ColorScheme(
    brightness: Brightness.light,
    primary: Colors.grey.shade800,
    onPrimary: Colors.white,
    secondary: Colors.grey.shade700,
    onSecondary: Colors.grey.shade100,
    error: Colors.red.shade600,
    onError: Colors.red.shade100,
    surface: Colors.grey.shade100,
    onSurface: Colors.grey.shade500,
  )
);
