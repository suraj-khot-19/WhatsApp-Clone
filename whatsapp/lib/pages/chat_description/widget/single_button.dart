import 'package:flutter/material.dart';
import 'package:whatsapp/themes/color.dart';
import 'package:whatsapp/widgets/spacer.dart';

class SingleButton extends StatelessWidget {
  final IconData iconData;
  final String title;

  const SingleButton({super.key, required this.iconData, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(6.5),
      padding: EdgeInsets.all(8),
      height: 80,
      width: 80,
      decoration: BoxDecoration(
        color: AppColors.background(context),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 0.6, color: AppColors.secoundry(context)),
        boxShadow: [
          BoxShadow(
            blurRadius: 2,
            color: Theme.of(context).shadowColor.withOpacity(0.3),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            iconData,
            color: Colors.green.withOpacity(0.9),
          ),
          AddVerticleSpace(height: 10),
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
