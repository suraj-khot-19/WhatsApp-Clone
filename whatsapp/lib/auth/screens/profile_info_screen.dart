import 'package:flutter/material.dart';
import 'package:whatsapp/auth/screens/initalizing_screen.dart';
import 'package:whatsapp/auth/widgets/app_bar.dart';
import 'package:whatsapp/auth/widgets/custom_button.dart';
import 'package:whatsapp/auth/widgets/unerline_border.dart';
import 'package:whatsapp/themes/color.dart';
import 'package:whatsapp/widgets/spacer.dart';

class ProfileInfo extends StatefulWidget {
  const ProfileInfo({super.key});

  @override
  State<ProfileInfo> createState() => _ProfileInfoState();
}

class _ProfileInfoState extends State<ProfileInfo> {
  int length = 0;
  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AuthMyAppBar(title: "Profile info"),
      ),
      body: Center(
        child: Column(
          children: [
            AddVerticleSpace(height: 20),
            Text(
              "Please provide your name and an optional\n                   profile photo",
              style: TextStyle(
                  color: AppColors.secoundry(context).withOpacity(0.5)),
            ),
            AddVerticleSpace(height: 40),
            Container(
              padding: EdgeInsets.all(30),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.tertiary(context),
              ),
              child: Icon(
                Icons.camera_alt_rounded,
                color: AppColors.secoundry(context).withOpacity(0.1),
                size: 70,
              ),
            ),
            AddVerticleSpace(height: 50),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 50),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(bottom: 20),
                      child: TextFormField(
                        onChanged: (value) {
                          setState(() {
                            length = value.length;
                          });
                        },
                        decoration: InputDecoration(
                          hintText: "Username",
                          enabledBorder: UnerlineBorder().borderUnderline(),
                          focusedBorder: UnerlineBorder().borderUnderline(),
                        ),
                        controller: _controller,
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        length.toString(),
                        style: TextStyle(
                            color:
                                AppColors.secoundry(context).withOpacity(0.5),
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 5),
                        height: 2,
                        width: 20,
                        color: Colors.green,
                      )
                    ],
                  ),
                  AddHorizontalSpace(width: 8),
                  Icon(
                    Icons.emoji_emotions_outlined,
                    color: AppColors.secoundry(context).withOpacity(0.5),
                  ),
                ],
              ),
            ),
            Spacer(),
            CustomButton(
              title: "Next",
              onTap: () => Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return InitalizingScreen();
                },
              )),
            )
          ],
        ),
      ),
    );
  }
}
