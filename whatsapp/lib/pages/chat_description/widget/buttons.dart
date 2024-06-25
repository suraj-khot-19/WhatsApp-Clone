import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/pages/chat_description/widget/single_button.dart';

class Buttons extends StatelessWidget {
  const Buttons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SingleButton(
          iconData: Icons.message,
          title: "Message",
        ),
        SingleButton(
          iconData: Icons.call_outlined,
          title: "Audio",
        ),
        SingleButton(
          iconData: CupertinoIcons.video_camera,
          title: "Video",
        ),
        SingleButton(
          iconData: Icons.payment_rounded,
          title: "Pay",
        ),
      ],
    );
  }
}
