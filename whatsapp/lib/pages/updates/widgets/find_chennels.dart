import 'package:flutter/material.dart';
import 'package:whatsapp/model/user.dart';
import 'package:whatsapp/model/user_data.dart';
import 'package:whatsapp/pages/updates/screen/channels_screen.dart';
import 'package:whatsapp/pages/updates/widgets/single_find_channels.dart';
import 'package:whatsapp/widgets/spacer.dart';

class Findchennels extends StatelessWidget {
  const Findchennels({super.key});

  @override
  Widget build(BuildContext context) {
    final List<User> user = UserData().user;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Find channels",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return ChannelsScreen();
                    },
                  ));
                },
                child: Row(
                  children: [
                    Text(
                      "See all  ",
                      style: TextStyle(color: Colors.green.withOpacity(0.9)),
                    ),
                    Icon(
                      Icons.keyboard_arrow_right,
                      color: Colors.green.withOpacity(0.9),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        AddVerticleSpace(height: 10),
        SizedBox(
          height: 165,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            physics: const AlwaysScrollableScrollPhysics(),
            itemCount: user.length,
            itemBuilder: (context, index) {
              return SingleFindChannels(
                user: user[index],
              );
            },
          ),
        ),
        AddVerticleSpace(height: 30),
      ],
    );
  }
}
