import 'package:flutter/material.dart';
import 'package:whatsapp/pages/chat_description/widget/chat_divider.dart';
import 'package:whatsapp/themes/color.dart';
import 'package:whatsapp/widgets/spacer.dart';

class CommEx extends StatelessWidget {
  const CommEx({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 4, vertical: 15),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 184, 83, 117),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  "ROWDY",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              AddHorizontalSpace(width: 10),
              Text(
                "Rowdy",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ],
          ),
          AddVerticleSpace(height: 20),
          ChatDivider(),
          AddVerticleSpace(height: 20),
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.green.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(Icons.announcement_outlined),
              ),
              AddHorizontalSpace(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Announcements",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    AddVerticleSpace(height: 3),
                    Text(
                      "Welcome to the community!",
                      style: TextStyle(
                        color: AppColors.secoundry(context),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "19/08/2001",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: AppColors.secoundry(context),
                    ),
                  ),
                  AddVerticleSpace(height: 3),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 2),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: AppColors.secoundry(context),
                        ),
                        shape: BoxShape.rectangle),
                    child: Text(
                      "Archived",
                      style: TextStyle(
                        color: AppColors.secoundry(context),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
          AddVerticleSpace(height: 30),
          Row(
            children: [
              Icon(
                Icons.keyboard_arrow_right_outlined,
                color: AppColors.secoundry(context),
              ),
              AddHorizontalSpace(width: 30),
              Text(
                "View All",
                style: TextStyle(
                    color: AppColors.secoundry(context),
                    fontWeight: FontWeight.w600),
              )
            ],
          ),
          AddVerticleSpace(height: 20),
          ChatDivider(),
          AddVerticleSpace(height: 20),
        ],
      ),
    );
  }
}
