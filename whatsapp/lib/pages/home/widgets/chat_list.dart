import 'package:flutter/material.dart';
import 'package:whatsapp/model/user.dart';
import 'package:whatsapp/model/user_data.dart';
import 'package:whatsapp/pages/chat/screens/chat_screen.dart';
import 'package:whatsapp/themes/color.dart';
import 'package:whatsapp/widgets/showing_dp.dart';
import 'package:whatsapp/widgets/spacer.dart';

class ChatList extends StatefulWidget {
  const ChatList({
    super.key,
  });

  @override
  State<ChatList> createState() => _ChatListState();
}

class _ChatListState extends State<ChatList> {
  final UserData userData = UserData();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemCount: userData.user.length,
      itemBuilder: (context, index) {
        User user = userData.user[index];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 10),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return ChatScreen(user: user);
                },
              ));
            },
            // onLongPress: widget.onLongPress,
            child: Row(
              children: [
                //dp
                SizedBox(
                  height: 50,
                  width: 50,
                  child: GestureDetector(
                    onTap: () => ShowingDp().showPhoto(user, context),
                    child: CircleAvatar(
                      backgroundImage: AssetImage(user.dpPath),
                    ),
                  ),
                ),
                const AddHorizontalSpace(width: 10),
                //name bio
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        user.name,
                        style: const TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 18),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const AddVerticleSpace(height: 3),
                      Row(
                        children: [
                          Icon(Icons.check,
                              size: 20,
                              color: user.bio.contains("s")
                                  ? Colors.blue
                                  : AppColors.secoundry(
                                      context,
                                    )),
                          Text(
                            user.bio,
                            style: TextStyle(
                              color: AppColors.secoundry(context),
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      user.lastSeen,
                      style: TextStyle(
                          color: user.lastSeen.contains("online")
                              ? Colors.green
                              : AppColors.secoundry(context),
                          fontWeight: FontWeight.w400),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 4),
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.primary(context),
                      ),
                      child: const Center(
                        child: Text(
                          "2",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
