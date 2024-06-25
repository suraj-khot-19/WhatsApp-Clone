import 'package:flutter/material.dart';
import 'package:whatsapp/pages/home/screens/profile_screen.dart';
import 'package:whatsapp/themes/color.dart';
import 'package:whatsapp/widgets/spacer.dart';

class AccountRow extends StatelessWidget {
  const AccountRow({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProfileScreen(
              imgPath: "assets/ram.jpeg",
            ),
          )),
      child: Row(
        children: [
          Container(
            height: 70,
            width: 70,
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/ram.jpeg"),
            ),
          ),
          AddHorizontalSpace(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Suraj☀️",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                Text(
                  "🚩Apne to sirf shri Ram hai",
                  style: TextStyle(
                      color: AppColors.secoundry(context),
                      fontWeight: FontWeight.w500),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          Icon(
            Icons.qr_code,
            color: Colors.green,
          ),
          AddHorizontalSpace(width: 10),
          Icon(
            Icons.check_circle_outline,
            color: Colors.green,
          )
        ],
      ),
    );
  }
}
