import 'package:flutter/material.dart';
import 'package:whatsapp/model/user.dart';
import 'package:whatsapp/pages/calls/screens/call_screen.dart';
import 'package:whatsapp/pages/chat/screens/chat_screen.dart';
import 'package:whatsapp/pages/chat_description/screens/chat_description.dart';
import 'package:whatsapp/widgets/single_dp_view_home.dart';
import 'package:whatsapp/themes/color.dart';

class ShowingDp {
  //showing dp...
  void showPhoto(User user, BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            contentPadding: EdgeInsets.zero,
            content: GestureDetector(
              onTap: () => Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return SingleDpViewHome(user: user);
                },
              )),
              child: SizedBox(
                height: 250,
                child: Stack(
                  fit: StackFit.passthrough,
                  children: [
                    //image
                    Container(
                      padding: EdgeInsets.zero,
                      child: Image.asset(
                        user.dpPath,
                        fit: BoxFit.cover,
                      ),
                    ),
                    //name
                    Container(
                      padding: EdgeInsets.only(left: 20, top: 5),
                      height: 20,
                      width: double.infinity,
                      child: Text(
                        user.name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          backgroundColor: AppColors.tertiary(context),
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return ChatScreen(user: user);
                    },
                  ));
                },
                icon: Icon(
                  Icons.message,
                  color: Colors.green.withOpacity(0.9),
                ),
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return CallScreen();
                    },
                  ));
                },
                icon: Icon(
                  Icons.call,
                  color: Colors.green.withOpacity(0.9),
                ),
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return CallScreen();
                    },
                  ));
                },
                icon: Icon(
                  Icons.video_call_outlined,
                  color: Colors.green.withOpacity(0.9),
                ),
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return ChatDescription(user: user);
                    },
                  ));
                },
                icon: Icon(
                  Icons.info,
                  color: Colors.green.withOpacity(0.9),
                ),
              ),
            ],
          );
        });
  }
}
