import 'package:flutter/material.dart';
import 'package:whatsapp/model/user.dart';
import 'package:whatsapp/themes/color.dart';

class StatusListHorizonntal extends StatelessWidget {
  final List<User> user;
  const StatusListHorizonntal({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      physics: const AlwaysScrollableScrollPhysics(),
      itemCount: user.length,
      itemBuilder: (context, index) {
        return SizedBox(
          height: 110,
          width: 100,
          child: ListTile(
            title: index == 0
                ? Stack(
                    children: [
                      SizedBox(
                        height: 60,
                        width: 100,
                        child: CircleAvatar(
                          backgroundImage: AssetImage(user[0].dpPath),
                        ),
                      ),
                      Positioned(
                        right: 0,
                        bottom: -2,
                        child: Container(
                          height: 24,
                          width: 24,
                          margin: const EdgeInsets.only(
                              left: 3, right: 0, bottom: 3),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.primary(context),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.add,
                              size: 16,
                              color: AppColors.secoundry(context),
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                : Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 1.5, color: AppColors.primary(context)),
                        shape: BoxShape.circle),
                    padding: const EdgeInsets.all(2.5),
                    height: 60,
                    child: CircleAvatar(
                      backgroundImage: AssetImage(user[index].dpPath),
                    ),
                  ),
            subtitle: index == 0
                ? const Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Text(
                      "My Status",
                      style: TextStyle(fontSize: 12),
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Text(
                      user[index].name,
                      maxLines: 1,
                      style: const TextStyle(fontSize: 14),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
          ),
        );
      },
    );
  }
}
