import 'package:flutter/material.dart';
import 'package:whatsapp/themes/color.dart';
import 'package:whatsapp/widgets/spacer.dart';

class MediaLinks extends StatelessWidget {
  const MediaLinks({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      "assets/i1.jpeg",
      "assets/i1.jpeg",
      "assets/i1.jpeg",
      "assets/i1.jpeg",
      "assets/i1.jpeg",
      "assets/i1.jpeg",
    ];
    return Column(
      children: [
        Divider(
          color: AppColors.secoundry(context).withOpacity(0.3),
        ),
        Row(
          children: [
            Text(
              "Media, links, and docs",
              style: TextStyle(
                  color: AppColors.secoundry(context).withOpacity(0.6)),
            ),
            Spacer(),
            Text(
              "0",
              style: TextStyle(
                  color: AppColors.secoundry(context).withOpacity(0.6)),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: AppColors.secoundry(context).withOpacity(0.6),
            )
          ],
        ),
        Container(
          margin: EdgeInsets.only(top: 5),
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
        Divider(
          color: AppColors.secoundry(context).withOpacity(0.3),
        ),
      ],
    );
  }
}
