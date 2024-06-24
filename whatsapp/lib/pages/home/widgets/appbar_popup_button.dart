import 'package:flutter/material.dart';

class AppbarPopupButton extends StatelessWidget {
  const AppbarPopupButton({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      color: Colors.white,
      itemBuilder: (context) => [
        PopupMenuItem(
            onTap: () {},
            value: "",
            child: const Text(
              "New Group",
            )),
        PopupMenuItem(
          onTap: () {},
          value: "",
          child: const Text(
            "New Brodcast",
          ),
        ),
        PopupMenuItem(
          onTap: () {},
          value: "",
          child: const Text(
            "Linked Devices",
          ),
        ),
        PopupMenuItem(
          onTap: () {},
          value: "",
          child: const Text(
            "Starred Messages",
          ),
        ),
        PopupMenuItem(
          onTap: () {},
          value: "",
          child: const Text(
            "Payments",
          ),
        ),
        PopupMenuItem(
          onTap: () {},
          value: "",
          child: const Text(
            "Settings",
          ),
        ),
      ],
    );
  }
}
