import 'package:flutter/material.dart';
import 'package:whatsapp/pages/home/screens/setting_screen.dart';
import 'package:whatsapp/themes/color.dart';

class MyAppBar extends StatelessWidget {
  final String title;
  final VoidCallback onTapQr;
  final VoidCallback onTapPhoto;
  final VoidCallback? onTapSearch;
  final bool? isSerach;

  const MyAppBar(
      {super.key,
      required this.title,
      required this.onTapQr,
      required this.onTapPhoto,
      this.onTapSearch,
      this.isSerach});

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
        isSerach == null
            ? IconButton(
                onPressed: onTapSearch,
                icon: const Icon(Icons.search),
              )
            : SizedBox(
                height: 0,
                width: 0,
              ),
        PopupMenuButton(
          color: AppColors.primary(context),
          itemBuilder: (context) => [
            PopupMenuItem(
              child: Text(
                "setting",
                style: TextStyle(
                  color: AppColors.tertiary(context),
                ),
              ),
              onTap: () => Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return SettingScreen();
                },
              )),
            ),
          ],
        )
      ],
    );
  }
}
