import 'package:flutter/material.dart';
import 'package:whatsapp/widgets/spacer.dart';

class RedRowIcon extends StatelessWidget {
  final IconData icon;
  final String text;
  const RedRowIcon({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AddHorizontalSpace(width: 11),
        Icon(
          icon,
          color: Color.fromARGB(255, 255, 0, 0),
          size: 25,
        ),
        AddHorizontalSpace(width: 22),
        Text(
          text,
          style: TextStyle(
              color: const Color.fromARGB(255, 255, 0, 0), fontSize: 18),
        ),
      ],
    );
  }
}
