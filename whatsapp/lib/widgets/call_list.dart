import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/model/user.dart';
import 'package:whatsapp/model/user_data.dart';
import 'package:whatsapp/themes/color.dart';

class CallList extends StatelessWidget {
  const CallList({super.key});

  @override
  Widget build(BuildContext context) {
    List<User> user = UserData().user;
    return Expanded(
      child: ListView.builder(
        itemCount: user.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: ListTile(
              leading: SizedBox(
                height: 100,
                width: 50,
                child: CircleAvatar(
                  backgroundImage: AssetImage(user[index].dpPath),
                ),
              ),
              title: user[index].name.contains("A")
                  ? Text(
                      user[index].name,
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.red,
                      ),
                    )
                  : Text(
                      user[index].name,
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
              subtitle: Row(
                children: [
                  user[index].name.contains("A")
                      ? Transform.rotate(
                          angle: 2.40,
                          child: const Icon(
                            color: Colors.red,
                            size: 20,
                            Icons.arrow_forward,
                          ),
                        )
                      : Transform.rotate(
                          angle: -0.5,
                          child: Icon(
                            Icons.arrow_forward,
                            size: 20,
                            color: AppColors.primary(context),
                          ),
                        ),
                  const Text("14 June,"),
                  Text(user[index].lastSeen),
                ],
              ),
              trailing: user[index].name.contains("S")
                  ? const Icon(
                      CupertinoIcons.video_camera,
                      size: 28,
                    )
                  : const Icon(Icons.call_outlined),
            ),
          );
        },
      ),
    );
  }
}
