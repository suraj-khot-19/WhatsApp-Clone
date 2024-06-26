import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/auth/widgets/app_bar.dart';
import 'package:whatsapp/themes/color.dart';
import 'package:whatsapp/widgets/spacer.dart';

class ProfileInfo extends StatefulWidget {
  const ProfileInfo({super.key});

  @override
  State<ProfileInfo> createState() => _ProfileInfoState();
}

class _ProfileInfoState extends State<ProfileInfo> {
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
              padding: EdgeInsets.all(40),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.secoundry(context).withOpacity(0.1),
              ),
              child: Icon(
                CupertinoIcons.camera,
                size: 40,
              ),
            )
          ],
        ),
      ),
    );
  }
}
