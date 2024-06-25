import 'package:flutter/material.dart';
import 'package:whatsapp/model/user.dart';
import 'package:whatsapp/widgets/single_dp_view_home.dart';

class ItemsWithStack extends StatelessWidget {
  final User user;
  const ItemsWithStack({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return //back button
        Stack(
      children: [
        Align(
            alignment: Alignment.topLeft,
            child: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: Icon(Icons.arrow_back))),
        Align(
          alignment: Alignment.topCenter,
          child: InkWell(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SingleDpViewHome(user: user),
                )),
            child: SizedBox(
              height: 150,
              width: 150,
              child: CircleAvatar(
                backgroundImage: AssetImage(
                  user.dpPath,
                ),
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: PopupMenuButton(
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  child: Text("Share"),
                  onTap: () {},
                ),
                PopupMenuItem(child: Text("Edit"), onTap: () {}),
                PopupMenuItem(
                    child: Text("View in address book"), onTap: () {}),
                PopupMenuItem(
                    child: Text("Verify security code"), onTap: () {}),
              ];
            },
          ),
        ),
      ],
    );
  }
}
