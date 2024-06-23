import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp/model/user.dart';
import 'package:whatsapp/screens/single_dp_view_home.dart';
import 'package:whatsapp/themes/color.dart';
import 'package:whatsapp/themes/theme_provider.dart';
import 'package:whatsapp/widgets/message_container.dart';
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
        child: AppBar(
          leadingWidth: 12,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const AddHorizontalSpace(width: 10),
              SizedBox(
                height: 50,
                width: 45,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return SingleDpViewHome(user: widget.user);
                      },
                    ));
                  },
                  child: CircleAvatar(
                    backgroundImage: AssetImage(widget.user.dpPath),
                  ),
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
      body: Column(
        children: [
          Expanded(
            child: SizedBox(
              child: CupertinoSwitch(
                activeColor: Colors.cyan,
                value: Provider.of<ThemeProvider>(context, listen: false)
                    .isDarkTheme,
                onChanged: (value) {
                  Provider.of<ThemeProvider>(context, listen: false)
                      .toggleTheme();
                },
              ),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const MessageContainer(),
              const AddHorizontalSpace(width: 3),
              Container(
                height: 70,
                margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 0),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: AppColors.primary(context), shape: BoxShape.circle),
                child: const Icon(
                  Icons.mic,
                  size: 20,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
