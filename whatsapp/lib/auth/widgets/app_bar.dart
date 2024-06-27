import 'package:flutter/material.dart';
import 'package:whatsapp/themes/color.dart';

class AuthMyAppBar extends StatelessWidget {
  final String title;
  const AuthMyAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      automaticallyImplyLeading: false,
      title: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 17,
          color: Colors.green.withOpacity(0.9),
        ),
      ),
      actions: [
        PopupMenuButton(
          color: AppColors.primary(context),
          itemBuilder: (context) => [
            PopupMenuItem(
                child: Text(
              "more",
              style: TextStyle(
                color: AppColors.tertiary(context),
              ),
            ))
          ],
        )
      ],
    );
  }
}
