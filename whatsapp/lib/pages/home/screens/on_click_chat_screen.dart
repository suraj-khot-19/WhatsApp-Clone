import 'package:flutter/material.dart';
import 'package:whatsapp/model/user.dart';
import 'package:whatsapp/model/user_data.dart';
import 'package:whatsapp/pages/home/screens/setting_screen.dart';
import 'package:whatsapp/pages/home/widgets/below_app_bar_contacts.dart';
import 'package:whatsapp/themes/color.dart';
import 'package:whatsapp/widgets/all_in_one_chat_list.dart';
import 'package:whatsapp/widgets/spacer.dart';

class OnClickChatScreen extends StatelessWidget {
  const OnClickChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<User> user = UserData().user;
    return Scaffold(
      backgroundColor: AppColors.background(context),
      appBar: AppBar(
        title: Text(
          "Select contact\n${user.length} contacts",
          style: TextStyle(fontSize: 14),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search_outlined,
            ),
          ),
          PopupMenuButton(
            color: AppColors.primary(context),
            itemBuilder: (context) => [
              PopupMenuItem(
                child: Text(
                  "Setting",
                  style: TextStyle(
                    color: AppColors.tertiary(context),
                  ),
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return SettingScreen();
                    },
                  ));
                },
              )
            ],
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BelowAppBarContacts(
                  icon: Icons.person_add_alt_1, title: "New group"),
              BelowAppBarContacts(
                  icon: Icons.person_add_alt_1,
                  title: "New contact",
                  isScanner: true),
              BelowAppBarContacts(icon: Icons.people, title: "New Community"),
              AddVerticleSpace(height: 15),
              Text(
                "Contacts on WhatsAap",
                style: TextStyle(color: AppColors.secoundry(context)),
              ),
              AddVerticleSpace(height: 15),
              AllInOneChatList(
                userList: user,
                isContacts: true,
              )
            ],
          ),
        ),
      ),
    );
  }
}
