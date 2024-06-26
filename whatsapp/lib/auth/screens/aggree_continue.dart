import 'package:flutter/material.dart';
import 'package:whatsapp/auth/screens/phone_numberr.dart';
import 'package:whatsapp/auth/widgets/custom_button.dart';
import 'package:whatsapp/themes/color.dart';
import 'package:whatsapp/widgets/spacer.dart';

class AggreeContinue extends StatelessWidget {
  const AggreeContinue({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background(context),
      body: Column(
        children: [
          AddVerticleSpace(height: 150),
          Text(
            "Welcome to WhatsApp",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
          ),
          AddVerticleSpace(height: 25),
          Text(
            "Read our privacy Policy. Tap \"Aggree and continue\" to \n             accept the Terms of services",
          ),
          AddVerticleSpace(height: 60),
          Center(
            child: Container(
              width: 140,
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
              decoration: BoxDecoration(
                  color: AppColors.inversePrimery(context).withOpacity(0.1),
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                children: [
                  Icon(
                    Icons.language_outlined,
                    color: Colors.green,
                  ),
                  AddHorizontalSpace(width: 8),
                  Text(
                    "English",
                    style: TextStyle(color: Colors.green),
                  ),
                  AddHorizontalSpace(width: 8),
                  Icon(
                    Icons.keyboard_arrow_down_outlined,
                    color: Colors.green,
                  ),
                ],
              ),
            ),
          ),
          Spacer(),
          CustomButton(
            title: "Aggre and continue",
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return PhoneNumberr();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
