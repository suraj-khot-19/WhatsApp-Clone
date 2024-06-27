import 'package:flutter/material.dart';
import 'package:whatsapp/themes/color.dart';

class FollowButton extends StatelessWidget {
  const FollowButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(22),
      ),
      child: Text(
        "Follow",
        style: TextStyle(
            fontWeight: FontWeight.w400, color: AppColors.tertiary(context)),
      ),
    );
  }
}
