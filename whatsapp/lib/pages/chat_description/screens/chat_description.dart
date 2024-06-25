import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/model/user.dart';
import 'package:whatsapp/pages/chat_description/widget/buttons.dart';
import 'package:whatsapp/pages/chat_description/widget/chat_divider.dart';
import 'package:whatsapp/pages/chat_description/widget/group_comman.dart';
import 'package:whatsapp/pages/chat_description/widget/icon_name_row.dart';
import 'package:whatsapp/pages/chat_description/widget/items_with_stack.dart';
import 'package:whatsapp/pages/chat_description/widget/media_links.dart';
import 'package:whatsapp/themes/color.dart';
import 'package:whatsapp/widgets/spacer.dart';

class ChatDescription extends StatelessWidget {
  final User user;
  const ChatDescription({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background(context),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AddVerticleSpace(height: 40),
            //stack
            ItemsWithStack(user: user),
            AddVerticleSpace(height: 8),
            //name
            Text(
              user.name,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            AddVerticleSpace(height: 8),
            //number
            Text(
              "+91 9359658536",
              style:
                  TextStyle(color: AppColors.secoundry(context), fontSize: 16),
            ),
            AddVerticleSpace(height: 8),
            //last seen
            Text(
              "Last seen " + user.lastSeen,
              style:
                  TextStyle(color: AppColors.secoundry(context), fontSize: 16),
            ),
            AddVerticleSpace(height: 8),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  //buttons
                  Buttons(),
                  //media
                  MediaLinks(user: user),
                  //icons and name in row
                  IconNameRow(
                    title: 'Notification',
                    icon: Icons.notifications_none_outlined,
                  ),
                  IconNameRow(
                    title: 'Media visiblity',
                    icon: CupertinoIcons.photo,
                  ),
                  ChatDivider(),
                  IconNameRow(
                    title: 'Encryption',
                    subTitle:
                        "Messages and calls are end-to-end encrypted. Tap to verify",
                    icon: Icons.lock_outline,
                  ),
                  IconNameRow(
                    title: 'Disappearing messages',
                    icon: Icons.timelapse,
                    subTitle: "Off",
                  ),
                  IconNameRow(
                    title: 'Chat lock',
                    icon: CupertinoIcons.lock,
                    isSwitch: true,
                    subTitle: "Lock and hide this chat on this device",
                  ),
                  ChatDivider(),
                  GroupComman(
                    user: user,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
