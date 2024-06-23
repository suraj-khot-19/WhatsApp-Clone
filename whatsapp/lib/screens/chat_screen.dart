import 'package:flutter/material.dart';
import 'package:whatsapp/model/user.dart';
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
      backgroundColor: Colors.black,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppBar(
          leadingWidth: 10,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const AddHorizontalSpace(width: 10),
              SizedBox(
                height: 40,
                width: 40,
                child: GestureDetector(
                  onTap: () {},
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
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "assets/image.png",
                ),
                fit: BoxFit.cover)),
        child: Column(
          children: [
            Expanded(
              child: Container(),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const MessageContainer(),
                Container(
                  height: 70,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 0),
                  padding: const EdgeInsets.all(5),
                  decoration: const BoxDecoration(
                      color: Colors.green, shape: BoxShape.circle),
                  child: const Icon(
                    Icons.mic,
                    color: Colors.white,
                    size: 35,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
