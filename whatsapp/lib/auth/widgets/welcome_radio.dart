import 'package:flutter/material.dart';

class WelcomeRadio extends StatelessWidget {
  final int selected;
  final String title;
  final int value;
  final String subtitile;
  final ValueChanged<int?> onTap;
  const WelcomeRadio(
      {super.key,
      required this.selected,
      required this.title,
      required this.subtitile,
      required this.onTap,
      required this.value});

  @override
  Widget build(BuildContext context) {
    return RadioListTile(
      activeColor: Colors.green,
      title: Text(title),
      subtitle: Text(subtitile),
      value: value,
      groupValue: selected,
      onChanged: onTap,
    );
  }
}
