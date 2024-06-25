import 'package:flutter/material.dart';
import 'package:whatsapp/pages/home/screens/setting_screen.dart';

class AppbarPopupButton extends StatelessWidget {
  const AppbarPopupButton({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      color: Colors.white,
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
          child: const Text(
            "Settings",
          ),
        ),
      ],
    );
  }
}
