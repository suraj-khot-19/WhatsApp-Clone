import 'package:flutter/material.dart';
import 'package:whatsapp/widgets/spacer.dart';

class BelowAppBarContacts extends StatelessWidget {
  final IconData icon;
  final String title;
  final bool isScanner;
  const BelowAppBarContacts(
      {super.key,
      required this.icon,
      required this.title,
      this.isScanner = false});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 8),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.green,
          ),
          child: Icon(icon),
        ),
        AddHorizontalSpace(width: 15),
        Text(
          title,
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
        ),
        Spacer(),
        isScanner ? Icon(Icons.qr_code_outlined) : SizedBox(),
      ],
    );
  }
}
