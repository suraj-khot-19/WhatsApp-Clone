import 'package:flutter/material.dart';
import 'package:whatsapp/pages/home/screens/setting_screen.dart';
import 'package:whatsapp/themes/color.dart';

class AppbarPopupButton extends StatelessWidget {
  const AppbarPopupButton({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      color: AppColors.primary(context),
      shadowColor: Colors.green,
      itemBuilder: (context) => [
        // PopupMenuItem(
        //     onTap: () {},
        //     value: "",
        //     child: const Text(
        //       "New Group",
        //     )),
        // PopupMenuItem(
        //   onTap: () {},
        //   value: "",
        //   child: const Text(
        //     "New Brodcast",
        //   ),
        // ),
        // PopupMenuItem(
        //   onTap: () {},
        //   value: "",
        //   child: const Text(
        //     "Linked Devices",
        //   ),
        // ),
        // PopupMenuItem(
        //   onTap: () {},
        //   value: "",
        //   child: const Text(
        //     "Starred Messages",
        //   ),
        // ),
        // PopupMenuItem(
        //   onTap: () {},
        //   value: "",
        //   child: const Text(
        //     "Payments",
        //   ),
        // ),
        PopupMenuItem(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SettingScreen(),
                ));
          },
          child: Text(
            "Settings",
            style: TextStyle(color: AppColors.tertiary(context)),
          ),
        ),
      ],
    );
  }
}
