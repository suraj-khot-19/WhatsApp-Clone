import 'package:flutter/material.dart';
import 'package:whatsapp/model/user.dart';
import 'package:whatsapp/model/user_data.dart';
import 'package:whatsapp/pages/chat_description/widget/chat_divider.dart';
import 'package:whatsapp/pages/chat_description/widget/red_row_icon.dart';
import 'package:whatsapp/themes/color.dart';
import 'package:whatsapp/widgets/spacer.dart';

class GroupComman extends StatelessWidget {
  final User user;
  const GroupComman({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    List<User> users = UserData().user;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "  1 Group in common",
            style: TextStyle(
                fontSize: 15,
                color: AppColors.secoundry(context).withOpacity(0.5)),
          ),
          AddVerticleSpace(height: 10),
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.green,
                ),
                child: Icon(Icons.people_outline),
              ),
              AddHorizontalSpace(width: 15),
              Text(
                "Create group with ${user.name}",
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
          AddVerticleSpace(height: 15),
          Row(
            children: [
              Container(
                height: 45,
                width: 45,
                child: CircleAvatar(
                  backgroundImage: AssetImage(user.dpPath),
                ),
              ),
              AddHorizontalSpace(width: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "🔥#DKTE Boy's🔥",
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                    overflow: TextOverflow.ellipsis,
                  ),
                  AddVerticleSpace(height: 5),
                  Wrap(
                      spacing: 5.0,
                      runSpacing: 5.0,
                      children: users.take(3).map((user) {
                        return Text(
                          "${user.name}${user != users.last ? ', ' : ''}",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        );
                      }).toList())
                ],
              ),
            ],
          ),
          AddVerticleSpace(height: 20),
          ChatDivider(),
          AddVerticleSpace(height: 10),
          //row
          RedRowIcon(
            icon: Icons.block_outlined,
            text: "Block ${user.name}",
          ),
          AddVerticleSpace(height: 10),
          RedRowIcon(
              icon: Icons.thumb_down_outlined, text: "Report ${user.name}"),
          AddVerticleSpace(height: 20),
          ChatDivider(),
          AddVerticleSpace(height: 20),
        ],
      ),
    );
  }
}
