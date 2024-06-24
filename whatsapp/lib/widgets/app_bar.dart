import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  final String title;
  final VoidCallback onTapQr;
  final VoidCallback onTapPhoto;
  final VoidCallback onTapSearch;

  const MyAppBar(
      {super.key,
      required this.title,
      required this.onTapQr,
      required this.onTapPhoto,
      required this.onTapSearch});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: 35,
      title: Text(title),
      actions: [
        IconButton(
          onPressed: onTapQr,
          icon: const Icon(Icons.qr_code_scanner),
        ),
        IconButton(
          onPressed: onTapPhoto,
          icon: const Icon(Icons.photo_camera_outlined),
        ),
        IconButton(
          onPressed: onTapSearch,
          icon: const Icon(Icons.search),
        ),
        PopupMenuButton(
          itemBuilder: (context) => [
            const PopupMenuItem(
              child: Text("setting"),
            ),
            const PopupMenuItem(
              child: Text("more"),
            ),
          ],
        )
      ],
    );
  }
}
