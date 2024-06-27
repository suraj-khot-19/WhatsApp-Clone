import 'package:flutter/material.dart';
import 'package:whatsapp/model/user.dart';
import 'package:whatsapp/model/user_data.dart';
import 'package:whatsapp/pages/updates/widgets/find_chennels.dart';
import 'package:whatsapp/themes/color.dart';
import 'package:whatsapp/widgets/app_bar.dart';
import 'package:whatsapp/pages/updates/widgets/chennel_list_verti.dart';
import 'package:whatsapp/pages/updates/widgets/edit_button_update_screen.dart';
import 'package:whatsapp/widgets/spacer.dart';
import 'package:whatsapp/pages/updates/widgets/status_list_horizonntal.dart';

class UpdateScreen extends StatefulWidget {
  const UpdateScreen({super.key});

  @override
  State<UpdateScreen> createState() => _UpdateScreenState();
}

class _UpdateScreenState extends State<UpdateScreen> {
  final List<User> user = UserData().user;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          backgroundColor: AppColors.background(context),
          appBar: PreferredSize(
              preferredSize: const Size.fromHeight(50),
              child: MyAppBar(
                title: "Updates",
                onTapQr: () {},
                onTapPhoto: () {},
                onTapSearch: () {},
              )),
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
                //horizontal status
                SizedBox(
                  height: 100,
                  child: StatusListHorizonntal(user: user),
                ),
                const AddVerticleSpace(height: 10),
                Divider(
                  color: AppColors.inversePrimery(context).withOpacity(0.3),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 15.0, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Channels",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Icon(Icons.add)
                    ],
                  ),
                ),
                //groups list

                const ChennelListVerti(),
                AddVerticleSpace(height: 10),
                Findchennels(),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.green.withOpacity(0.9),
            onPressed: () {},
            child: const Icon(Icons.camera_alt_outlined),
          ),
        ),
        const EditButtonUpdateScreen()
      ],
    );
  }
}
