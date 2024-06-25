import 'package:flutter/material.dart';
import 'package:whatsapp/pages/chat_description/widget/chat_divider.dart';
import 'package:whatsapp/pages/communities/widgets/comm_ex.dart';
import 'package:whatsapp/themes/color.dart';
import 'package:whatsapp/widgets/app_bar.dart';
import 'package:whatsapp/widgets/spacer.dart';

class CommunityScreen extends StatelessWidget {
  const CommunityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: MyAppBar(
          title: "Community",
          onTapPhoto: () {},
          onTapQr: () {},
          isSerach: false,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            Row(
              children: [
                Stack(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: AppColors.tertiary(context),
                          borderRadius: BorderRadius.circular(15)),
                      child: Icon(
                        Icons.people_outline,
                        color: AppColors.secoundry(context),
                        size: 35,
                      ),
                    ),
                    Positioned(
                      right: 0,
                      bottom: -2,
                      child: Container(
                        height: 24,
                        width: 24,
                        margin:
                            const EdgeInsets.only(left: 3, right: 0, bottom: 3),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.green.withOpacity(0.9),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.add,
                            size: 16,
                            color: AppColors.secoundry(context),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                AddHorizontalSpace(width: 20),
                Text(
                  "New Community",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
                )
              ],
            ),
            AddVerticleSpace(height: 10),
            ChatDivider(),
            CommEx(),
          ],
        ),
      ),
    );
  }
}
