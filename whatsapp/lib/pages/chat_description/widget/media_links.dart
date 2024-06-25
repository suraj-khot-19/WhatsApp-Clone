import 'package:flutter/material.dart';
import 'package:whatsapp/model/user.dart';
import 'package:whatsapp/pages/chat_description/screens/media_screen.dart';
import 'package:whatsapp/pages/chat_description/widget/chat_divider.dart';
import 'package:whatsapp/themes/color.dart';
import 'package:whatsapp/widgets/spacer.dart';

class MediaLinks extends StatelessWidget {
  final User user;
  const MediaLinks({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      "assets/p1.jpg",
      "assets/p2.jpg",
      "assets/p3.jpg",
      "assets/p1.jpg",
      "assets/p2.jpg",
      "assets/p3.jpg",
    ];
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      margin: const EdgeInsets.symmetric(vertical: 6.0),
      color: AppColors.tertiary(context).withOpacity(0.2),
      child: Column(
        children: [
          ChatDivider(),
          AddVerticleSpace(height: 10),
          Row(
            children: [
              Text(
                "Media, links, and docs",
                style: TextStyle(
                    color: AppColors.secoundry(context).withOpacity(0.6)),
              ),
              Spacer(),
              Text(
                images.length.toString(),
                style: TextStyle(
                    color: AppColors.secoundry(context).withOpacity(0.6)),
              ),
              AddHorizontalSpace(width: 10),
              InkWell(
                onTap: () => Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return MediaScreen(user: user);
                  },
                )),
                child: Icon(
                  Icons.arrow_forward_ios,
                  size: 18,
                  color: AppColors.secoundry(context).withOpacity(0.6),
                ),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 15),
            height: 100,
            color: AppColors.tertiary(context).withOpacity(0.7),
            child: ListView.builder(
              itemCount: images.length,
              physics: AlwaysScrollableScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  height: 100,
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                      image: AssetImage(
                        images[index],
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            ),
          ),
          AddVerticleSpace(height: 5),
          ChatDivider(),
        ],
      ),
    );
  }
}
