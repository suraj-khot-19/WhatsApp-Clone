import 'package:flutter/material.dart';
import 'package:whatsapp/model/user.dart';

class SingleDpViewHome extends StatelessWidget {
  final User user;
  const SingleDpViewHome({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
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
      body: Center(
          child: Image.asset(
        user.dpPath,
        height: 400,
        width: double.infinity,
        fit: BoxFit.cover,
      )),
    );
  }
}
