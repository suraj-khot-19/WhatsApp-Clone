import 'package:flutter/material.dart';
import 'package:whatsapp/model/chat.dart';
import 'package:whatsapp/model/chat_data.dart';
import 'package:whatsapp/themes/color.dart';
import 'package:whatsapp/widgets/spacer.dart';

class Chats extends StatelessWidget {
  const Chats({super.key});

  @override
  Widget build(BuildContext context) {
    List<Chat> chat = ChatData().chat;
    return Expanded(
      child: ListView.builder(
        itemCount: chat.length,
        itemBuilder: (context, index) {
          return chat[index].type == "send"
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.green.withOpacity(0.3),
                      ),
                      child: Row(
                        children: [
                          ConstrainedBox(
                            constraints: BoxConstraints(
                              maxWidth: MediaQuery.of(context).size.width * 0.5,
                            ),
                            child: Text(
                              chat[index].msg,
                              style: TextStyle(fontSize: 16),
                              maxLines: 15,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 15, left: 8),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  chat[index].time,
                                  style: TextStyle(fontSize: 12),
                                ),
                                AddHorizontalSpace(width: 5),
                                chat[index].status == 1
                                    ? Icon(
                                        Icons.check_outlined,
                                        color: AppColors.secoundry(context),
                                        size: 15,
                                      )
                                    : Icon(
                                        Icons.check_outlined,
                                        color: Colors.blue,
                                        size: 15,
                                      ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color:
                            AppColors.inversePrimery(context).withOpacity(0.1),
                      ),
                      child: Row(
                        children: [
                          ConstrainedBox(
                            constraints: BoxConstraints(
                              maxWidth: MediaQuery.of(context).size.width * 0.5,
                            ),
                            child: Text(
                              chat[index].msg,
                              style: TextStyle(fontSize: 16),
                              maxLines: 15,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 15, left: 8),
                            child: Row(
                              children: [
                                Text(
                                  chat[index].time,
                                  style: TextStyle(fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                );
        },
      ),
    );
  }
}
