import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/model/user.dart';
import 'package:whatsapp/themes/color.dart';
import 'package:whatsapp/widgets/follow_button.dart';
import 'package:whatsapp/widgets/spacer.dart';

class SingleFindChannels extends StatelessWidget {
  final User user;
  const SingleFindChannels({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        height: 150,
        width: 130,
        decoration: BoxDecoration(
          color: AppColors.tertiary(context),
          border:
              Border.all(color: AppColors.secoundry(context).withOpacity(0.2)),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AddVerticleSpace(height: 10),
            //image
            Stack(
              children: [
                SizedBox(
                  height: 70,
                  width: 70,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(user.dpPath),
                  ),
                ),
                Positioned(
                  bottom: -2,
                  right: -3,
                  child: Container(
                    margin: EdgeInsets.all(3),
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.primary(context),
                    ),
                    child: Icon(
                      CupertinoIcons.checkmark_seal_fill,
                      color: Colors.green,
                    ),
                  ),
                ),
              ],
            ),
            AddVerticleSpace(height: 5),
            Expanded(
              child: Text(
                user.name,
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            AddVerticleSpace(height: 5),
            FollowButton(),

            AddVerticleSpace(height: 10),
          ],
        ),
      ),
    );
  }
}
