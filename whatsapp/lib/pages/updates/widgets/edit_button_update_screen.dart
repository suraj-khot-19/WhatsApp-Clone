import 'package:flutter/material.dart';
import 'package:whatsapp/themes/color.dart';

class EditButtonUpdateScreen extends StatelessWidget {
  const EditButtonUpdateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 90,
      right: 20,
      child: InkWell(
        onTap: () {},
        child: Container(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: AppColors.tertiary(context),
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Theme.of(context).shadowColor.withOpacity(0.6),
                ),
              ]),
          child: Icon(
            Icons.edit,
            size: 22,
            color: AppColors.secoundry(context),
          ),
        ),
      ),
    );
  }
}
