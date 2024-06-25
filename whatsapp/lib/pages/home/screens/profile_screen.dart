import 'package:flutter/material.dart';
import 'package:whatsapp/pages/chat_description/widget/chat_divider.dart';
import 'package:whatsapp/themes/color.dart';
import 'package:whatsapp/widgets/spacer.dart';

class ProfileScreen extends StatelessWidget {
  final String imgPath;
  const ProfileScreen({super.key, required this.imgPath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Center(
              child: Stack(
                children: [
                  Container(
                    height: 180,
                    width: 180,
                    child: CircleAvatar(
                      backgroundImage: AssetImage(imgPath),
                    ),
                  ),
                  Container(
                    child: Positioned(
                      bottom: -1,
                      right: -1,
                      child: Container(
                        padding: EdgeInsets.all(6),
                        child: CircleAvatar(
                          backgroundColor: Colors.green,
                          child: Icon(
                            Icons.photo_camera_outlined,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            AddVerticleSpace(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.person_outline_sharp,
                  color: AppColors.secoundry(context).withOpacity(0.5),
                ),
                AddHorizontalSpace(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Name",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color:
                                AppColors.secoundry(context).withOpacity(0.5)),
                      ),
                      Text(
                        "Suraj☀️",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "This is not your username or pin. This name will be visible to your WhatsApp contacts",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color:
                                AppColors.secoundry(context).withOpacity(0.5)),
                      )
                    ],
                  ),
                ),
                Icon(
                  Icons.edit_outlined,
                  color: Colors.green,
                )
              ],
            ),
            AddVerticleSpace(height: 5),
            ChatDivider(),
            AddVerticleSpace(height: 5),
            Row(
              children: [
                Icon(
                  Icons.info_outline,
                  color: AppColors.secoundry(context).withOpacity(0.5),
                ),
                AddHorizontalSpace(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "About",
                        style: TextStyle(
                          color: AppColors.secoundry(context).withOpacity(0.5),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "🚩Apne to sirf shri Ram hai",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.edit_outlined,
                  color: Colors.green,
                )
              ],
            ),
            AddVerticleSpace(height: 5),
            ChatDivider(),
            AddVerticleSpace(height: 5),
            Row(
              children: [
                Icon(
                  Icons.call_outlined,
                  color: AppColors.secoundry(context).withOpacity(0.5),
                ),
                AddHorizontalSpace(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Phone",
                        style: TextStyle(
                          color: AppColors.secoundry(context).withOpacity(0.5),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "+91 9359658536",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.edit_outlined,
                  color: Colors.green,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
