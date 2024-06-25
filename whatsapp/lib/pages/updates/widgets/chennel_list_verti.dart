import 'package:flutter/material.dart';
import 'package:whatsapp/model/user.dart';
import 'package:whatsapp/model/user_data.dart';
import 'package:whatsapp/themes/color.dart';
import 'package:whatsapp/widgets/showing_dp.dart';
import 'package:whatsapp/widgets/spacer.dart';

class ChennelListVerti extends StatelessWidget {
  const ChennelListVerti({super.key});

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
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
                width: 50,
                child: GestureDetector(
                  onTap: () => ShowingDp().showPhoto(user[index], context),
                  child: CircleAvatar(
                    backgroundImage: AssetImage(user[index].dpPath),
                  ),
                ),
              ),
              AddHorizontalSpace(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      user[index].name,
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      user[index].bio,
                      style: TextStyle(color: AppColors.secoundry(context)),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    user[index].lastSeen,
                    style: TextStyle(
                      color: user[index].lastSeen.contains("online")
                          ? Colors.green
                          : AppColors.secoundry(context),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 4),
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.green.withOpacity(0.9),
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
              ),
            ],
          ),
        );
      },
    );
  }
}
