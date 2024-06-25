import 'package:flutter/material.dart';
import 'package:whatsapp/pages/home/widgets/chat_list.dart';
import 'package:whatsapp/themes/color.dart';
import 'package:whatsapp/widgets/spacer.dart';

class ArchivedScreen extends StatelessWidget {
  const ArchivedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Archived"),
        actions: [
          PopupMenuButton(
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  child: Text("more"),
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
            ChatList(),
          ],
        ),
      ),
    );
  }
}
