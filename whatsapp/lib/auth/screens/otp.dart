import 'package:flutter/material.dart';
import 'package:whatsapp/auth/screens/profile_info.dart';
import 'package:whatsapp/auth/widgets/custom_button.dart';
import 'package:whatsapp/auth/widgets/custom_textfeild.dart';
import 'package:whatsapp/themes/color.dart';
import 'package:whatsapp/widgets/spacer.dart';

class Otp extends StatefulWidget {
  final String ph;
  const Otp({super.key, required this.ph});

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  TextEditingController p1 = TextEditingController();
  TextEditingController p2 = TextEditingController();
  TextEditingController p3 = TextEditingController();
  TextEditingController p4 = TextEditingController();
  TextEditingController p5 = TextEditingController();
  TextEditingController p6 = TextEditingController();
  @override
  void dispose() {
    p1.dispose();
    p2.dispose();
    p3.dispose();
    p4.dispose();
    p5.dispose();
    p6.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text(
          "Verifying your number",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 17,
            color: Colors.green.withOpacity(0.9),
          ),
        ),
        actions: [
          PopupMenuButton(
            itemBuilder: (context) => [PopupMenuItem(child: Text("more"))],
          )
        ],
      ),
      body: Center(
        child: Column(
          children: [
            AddVerticleSpace(height: 10),
            Text("You've tried to regiser +91 ${widget.ph} recently."),
            AddVerticleSpace(height: 4),
            Text(
                "Wait before requesting an SMS or a call with your\ncode. Wrong number?"),
            AddVerticleSpace(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 80.0),
              child: Row(
                children: [
                  CustomTextfeild(controller: p1),
                  AddHorizontalSpace(width: 15),
                  CustomTextfeild(controller: p2),
                  AddHorizontalSpace(width: 15),
                  CustomTextfeild(controller: p3),
                  AddHorizontalSpace(width: 25),
                  CustomTextfeild(controller: p4),
                  AddHorizontalSpace(width: 15),
                  CustomTextfeild(controller: p5),
                  AddHorizontalSpace(width: 15),
                  CustomTextfeild(controller: p6),
                ],
              ),
            ),
            AddVerticleSpace(height: 15),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 80),
              child: Container(
                height: 2,
                color: AppColors.secoundry(context).withOpacity(0.3),
              ),
            ),
            AddVerticleSpace(height: 40),
            Text(
              "Didn't receive code?",
              style: TextStyle(
                  color: AppColors.secoundry(context).withOpacity(0.5)),
            ),
            AddVerticleSpace(height: 5),
            Text(
              "You may request a new code in 0:19",
              style: TextStyle(
                  color: AppColors.secoundry(context).withOpacity(0.5)),
            ),
            Spacer(),
            CustomButton(
              title: "Verify",
              onTap: () => Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return ProfileInfo();
                },
              )),
            ),
          ],
        ),
      ),
    );
  }
}
