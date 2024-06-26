import 'package:flutter/material.dart';
import 'package:whatsapp/auth/screens/aggree_continue.dart';
import 'package:whatsapp/themes/color.dart';
import 'package:whatsapp/widgets/spacer.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.arrow_forward_outlined),
          backgroundColor: Colors.green,
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return AggreeContinue();
              },
            ));
          }),
      backgroundColor: AppColors.background(context),
      body: Center(
        child: Column(
          children: [
            AddVerticleSpace(height: 150),
            Text(
              "Welcome to WhatsAap",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
            ),
            AddVerticleSpace(height: 15),
            Text(
              "choose your language to get started",
              style: TextStyle(color: AppColors.secoundry(context)),
            ),
          ],
        ),
      ),
    );
  }
}
