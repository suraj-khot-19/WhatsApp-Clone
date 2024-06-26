import 'package:flutter/material.dart';
import 'package:whatsapp/model/user.dart';
import 'package:whatsapp/model/user_data.dart';
import 'package:whatsapp/themes/color.dart';
import 'package:whatsapp/widgets/all_in_one_chat_list.dart';
import 'package:whatsapp/widgets/spacer.dart';

class ArchivedScreen extends StatelessWidget {
  const ArchivedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<User> user = UserData().user;
    return Scaffold(
      appBar: AppBar(
        title: Text("Archived"),
        actions: [
          PopupMenuButton(
            color: AppColors.primary(context),
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  child: Text(
                    "more",
                    style: TextStyle(
                      color: AppColors.tertiary(context),
                    ),
                  ),
                  onTap: () {},
                )
              ];
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AddVerticleSpace(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                "These chats stay archived when new messages are recevied. Tap to change",
                style: TextStyle(
                  color: AppColors.secoundry(context),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            AllInOneChatList(userList: user),
          ],
        ),
      ),
    );
  }
}
