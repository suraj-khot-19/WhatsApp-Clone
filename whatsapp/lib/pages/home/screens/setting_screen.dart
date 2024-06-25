import 'package:flutter/material.dart';
import 'package:whatsapp/pages/chat_description/widget/chat_divider.dart';
import 'package:whatsapp/pages/chat_description/widget/icon_name_row.dart';
import 'package:whatsapp/pages/home/widgets/account_row.dart';
import 'package:whatsapp/widgets/spacer.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search_outlined))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AccountRow(),
              AddVerticleSpace(height: 10),
              ChatDivider(),
              AddVerticleSpace(height: 3),
              IconNameRow(
                title: "Account",
                icon: Icons.account_box_outlined,
                subTitle: "Security notification, change number",
                isSetting: true,
              ),
              IconNameRow(
                title: "Privacy",
                icon: Icons.lock_outline,
                subTitle: "Block contacts,disappering messages",
                isSetting: true,
              ),
              IconNameRow(
                title: "Avatar",
                icon: Icons.emoji_people_outlined,
                subTitle: "Create, edit, profile photo",
                isSetting: true,
              ),
              IconNameRow(
                title: "Chats",
                icon: Icons.chat_outlined,
                subTitle: "Theme, wallpapers, chat history",
                isSetting: true,
              ),
              IconNameRow(
                title: "Notifications",
                icon: Icons.notifications_on_outlined,
                subTitle: "Message, group & call notes",
                isSetting: true,
              ),
              IconNameRow(
                title: "Storage and data",
                icon: Icons.storage_outlined,
                subTitle: "Network usage, auto-download",
                isSetting: true,
              ),
              IconNameRow(
                title: "App language",
                icon: Icons.language_outlined,
                subTitle: "English (device's language)",
                isSetting: true,
              ),
              IconNameRow(
                title: "Help",
                icon: Icons.help_outline,
                subTitle: "Help center, contact us, privacy policy",
                isSetting: true,
              ),
              IconNameRow(
                title: "Invite a freind",
                icon: Icons.people_outline,
                isSetting: true,
              ),
              AddVerticleSpace(height: 30),
              Text("Also from Meta"),
              IconNameRow(
                title: "Open Instagram",
                icon: Icons.emoji_symbols,
                isSetting: true,
              ),
              IconNameRow(
                title: "Open Facebook",
                icon: Icons.facebook_sharp,
                isSetting: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
