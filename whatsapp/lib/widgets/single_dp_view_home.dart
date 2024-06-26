import 'package:flutter/material.dart';
import 'package:whatsapp/model/user.dart';
import 'package:whatsapp/themes/color.dart';

class SingleDpViewHome extends StatelessWidget {
  final User user;
  final bool isStatus;
  const SingleDpViewHome(
      {super.key, required this.user, this.isStatus = false});

  @override
  Widget build(BuildContext context) {
    //if is staus
    Future.delayed(Duration(seconds: 2), () {
      if (isStatus) {
        Navigator.pop(context);
      }
    });
    return Scaffold(
      backgroundColor: AppColors.tertiary(context),
      appBar: AppBar(
        title: Text(
          user.name,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ),
      body: SizedBox(
        child: Center(
            child: Image.asset(
          user.dpPath,
          height: 500,
          width: double.infinity,
          fit: BoxFit.cover,
        )),
      ),
    );
  }
}
