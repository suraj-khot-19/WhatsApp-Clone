import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/model/user.dart';
import 'package:whatsapp/model/user_data.dart';
import 'package:whatsapp/themes/color.dart';
import 'package:whatsapp/widgets/showing_dp.dart';
import 'package:whatsapp/widgets/spacer.dart';

class CallList extends StatelessWidget {
  const CallList({super.key});

  @override
  Widget build(BuildContext context) {
    List<User> user = UserData().user;
    return ListView.builder(
      itemCount: user.length,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15),
          child: Row(
            children: [
              GestureDetector(
                onTap: () => ShowingDp().showPhoto(
                  user[index],
                  context,
                ),
                child: SizedBox(
                  height: 50,
                  width: 50,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(user[index].dpPath),
                  ),
                ),
              ),
              AddHorizontalSpace(width: 15),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    user[index].name.contains("A")
                        ? Text(
                            user[index].name,
                            style: const TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              color: Colors.red,
                            ),
                          )
                        : Text(
                            user[index].name,
                            style: const TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                          ),
                    Row(
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
                        const Text("14 June, "),
                        Text(user[index].lastSeen),
                      ],
                    ),
                  ],
                ),
              ),
              user[index].name.contains("S")
                  ? const Icon(
                      CupertinoIcons.video_camera,
                      size: 28,
                    )
                  : const Icon(Icons.call_outlined),
            ],
          ),
        );
      },
    );
  }
}
