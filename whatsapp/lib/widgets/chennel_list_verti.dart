import 'package:flutter/material.dart';
import 'package:whatsapp/model/user.dart';
import 'package:whatsapp/model/user_data.dart';
import 'package:whatsapp/themes/color.dart';

class ChennelListVerti extends StatelessWidget {
  const ChennelListVerti({super.key});

  @override
  Widget build(BuildContext context) {
    List<User> user = UserData().user;
    return ListView.builder(
      shrinkWrap: true,
      physics: const AlwaysScrollableScrollPhysics(),
      itemCount: user.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: SizedBox(
            height: 60,
            child: CircleAvatar(
              backgroundImage: AssetImage(user[index].dpPath),
            ),
          ),
          title: Text(
            user[index].name,
            style: const TextStyle(fontWeight: FontWeight.w500),
          ),
          subtitle: Text(
            user[index].bio,
            style: TextStyle(color: AppColors.secoundry(context)),
          ),
        );
      },
    );
  }
}
