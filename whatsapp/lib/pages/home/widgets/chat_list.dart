import 'package:flutter/material.dart';
import 'package:whatsapp/model/user.dart';
import 'package:whatsapp/model/user_data.dart';
import 'package:whatsapp/widgets/all_in_one_chat_list.dart';

class ChatList extends StatefulWidget {
  final String seaching;
  const ChatList({super.key, required this.seaching});

  @override
  State<ChatList> createState() => _ChatListState();
}

class _ChatListState extends State<ChatList> {
  final UserData userData = UserData();

  @override
  Widget build(BuildContext context) {
    List<User> filteredUsers = userData.user.where((user) {
      return user.name.toLowerCase().contains(widget.seaching.toLowerCase());
    }).toList();
    return filteredUsers.isEmpty
        ? Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [Text("search not Found")],
          )
        : AllInOneChatList(userList: filteredUsers);
  }
}
