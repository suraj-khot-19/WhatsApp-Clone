import 'package:flutter/material.dart';
import 'package:whatsapp/model/user.dart';
import 'package:whatsapp/model/user_data.dart';
import 'package:whatsapp/themes/color.dart';
import 'package:whatsapp/widgets/chennel_list_verti.dart';
import 'package:whatsapp/widgets/spacer.dart';
import 'package:whatsapp/widgets/status_list_horizonntal.dart';

class UpdateScreen extends StatefulWidget {
  const UpdateScreen({super.key});

  @override
  State<UpdateScreen> createState() => _UpdateScreenState();
}

class _UpdateScreenState extends State<UpdateScreen> {
  final List<User> user = UserData().user;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background(context),
      appBar: AppBar(
        leadingWidth: 35,
        title: const Text("Update"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.photo_library_sharp),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.photo_camera),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          PopupMenuButton(
            itemBuilder: (context) => [
              const PopupMenuItem(
                child: Text("more"),
              ),
            ],
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
              child: Text(
                "Status",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            SizedBox(height: 100, child: StatusListHorizonntal(user: user)),
            const AddVerticleSpace(height: 10),
            Divider(
              color: AppColors.inversePrimery(context).withOpacity(0.3),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Channels",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.add))
                ],
              ),
            ),
            const ChennelListVerti(),
            const AddVerticleSpace(height: 100),
          ],
        ),
      ),
    );
  }
}
