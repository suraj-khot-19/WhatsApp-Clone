import 'package:flutter/material.dart';

class AppColors {
  static Color primary(BuildContext context) =>
      Theme.of(context).colorScheme.primary;
  static Color secoundry(BuildContext context) =>
      Theme.of(context).colorScheme.secondary;
  static Color inversePrimery(BuildContext context) =>
      Theme.of(context).colorScheme.inversePrimary;
  static Color tertiary(BuildContext context) =>
      Theme.of(context).colorScheme.tertiary;
  static Color background(BuildContext context) =>
      Theme.of(context).colorScheme.surface;
}
