import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  colorScheme: ColorScheme.light(
      surface: Colors.white, //background
      primary: Colors.black.withOpacity(0.8),
      secondary: Colors.black.withOpacity(0.6),
      tertiary: Colors.grey.shade100,
      inversePrimary: Colors.grey.shade800),
);
