import 'package:flutter/material.dart';
import 'package:whatsapp/model/user.dart';
import 'package:whatsapp/pages/chat/widgets/chats.dart';
import 'package:whatsapp/pages/chat_description/screens/chat_description.dart';
import 'package:whatsapp/themes/color.dart';
import 'package:whatsapp/pages/chat/widgets/message_container.dart';
import 'package:whatsapp/widgets/spacer.dart';

class ChatScreen extends StatefulWidget {
  final User user;
  const ChatScreen({super.key, required this.user});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.tertiary(context),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return ChatDescription(user: widget.user);
              },
            ));
          },
          child: AppBar(
            leadingWidth: 18,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const AddHorizontalSpace(width: 10),
                SizedBox(
                  height: 50,
                  width: 45,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(widget.user.dpPath),
                  ),
                ),
                const AddHorizontalSpace(width: 10),
                Expanded(
                  child: SizedBox(
                    width: double.infinity,
                    child: Text(
                      widget.user.name,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
                InkWell(onTap: () {}, child: const Icon(Icons.video_call)),
                const AddHorizontalSpace(width: 12),
                InkWell(onTap: () {}, child: const Icon(Icons.call)),
                const AddHorizontalSpace(width: 12),
                InkWell(onTap: () {}, child: const Icon(Icons.more_vert))
              ],
            ),
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/image.png"),
              opacity: 0.1,
              colorFilter: ColorFilter.mode(
                  AppColors.tertiary(context).withOpacity(0.1),
                  BlendMode.colorDodge),
              fit: BoxFit.fitHeight),
        ),
        child: Column(
          children: [
            const Chats(),
            const MessageContainer(),
          ],
        ),
      ),
    );
  }
}
