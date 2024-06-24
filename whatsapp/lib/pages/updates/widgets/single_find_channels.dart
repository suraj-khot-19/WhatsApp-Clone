import 'package:flutter/material.dart';
import 'package:whatsapp/model/user.dart';
import 'package:whatsapp/themes/color.dart';
import 'package:whatsapp/widgets/spacer.dart';

class SingleFindChannels extends StatelessWidget {
  final User user;
  const SingleFindChannels({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 130,
      margin: EdgeInsets.symmetric(horizontal: 15),
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 3),
      decoration: BoxDecoration(
        color: AppColors.tertiary(context),
        border:
            Border.all(color: AppColors.secoundry(context).withOpacity(0.2)),
        borderRadius: BorderRadius.circular(40),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
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
                    color: AppColors.background(context),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.check_circle,
                    color: AppColors.primary(context),
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
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
              color: AppColors.primary(context),
              borderRadius: BorderRadius.circular(22),
            ),
            child: Text(
              "Follow",
              style: TextStyle(fontWeight: FontWeight.w400),
            ),
          )
        ],
      ),
    );
  }
}
