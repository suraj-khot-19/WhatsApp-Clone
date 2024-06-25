import 'package:flutter/material.dart';
import 'package:whatsapp/themes/color.dart';

class ChatDivider extends StatelessWidget {
  const ChatDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 3),
      height: 0.9,
      decoration: BoxDecoration(
          border: Border.all(
            color: AppColors.secoundry(context).withOpacity(0.1),
            width: 0.6,
          ),
          boxShadow: [
            BoxShadow(
              spreadRadius: 0.2,
              color: AppColors.secoundry(context).withOpacity(0.1),
            )
          ]),
    );
  }
}
