import 'package:flutter/material.dart';
import 'package:whatsapp/themes/color.dart';
import 'package:whatsapp/widgets/spacer.dart';

class MessageContainer extends StatefulWidget {
  const MessageContainer({super.key});

  @override
  State<MessageContainer> createState() => _MessageContainerState();
}

class _MessageContainerState extends State<MessageContainer> {
  bool isMsg = false;
  final TextEditingController _message = TextEditingController();
  @override
  void dispose() {
    _message.dispose();
    super.dispose();
  }

  void checkControll(String text) {
    setState(() {
      isMsg = text.isNotEmpty;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 320,
          decoration: BoxDecoration(
            color: AppColors.tertiary(context),
            borderRadius: BorderRadius.circular(25),
            boxShadow: [
              BoxShadow(
                color: Theme.of(context).shadowColor.withOpacity(0.3),
                spreadRadius: 2,
                blurRadius: 5,
              ),
            ],
          ),
          margin: const EdgeInsets.only(left: 10, bottom: 5),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
          child: Row(
            children: [
              IconButton(
                icon: const Icon(Icons.emoji_emotions_outlined),
                onPressed: () {},
              ),
              Expanded(
                child: TextField(
                  onChanged: (value) {
                    checkControll(value);
                  },
                  cursorColor: Colors.green.withOpacity(0.9),
                  controller: _message,
                  decoration: const InputDecoration(
                    hintText: "Message",
                    border: InputBorder.none,
                  ),
                ),
              ),
              isMsg
                  ? SizedBox()
                  : IconButton(
                      icon: const Icon(Icons.attach_file),
                      onPressed: () {},
                    ),
              isMsg
                  ? SizedBox()
                  : IconButton(
                      icon: const Icon(Icons.camera_alt_outlined),
                      onPressed: () {},
                    ),
            ],
          ),
        ),
        const AddHorizontalSpace(width: 3),
        !isMsg
            ? Container(
                height: 70,
                margin: const EdgeInsets.only(left: 5, bottom: 5),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.green.withOpacity(0.9),
                    shape: BoxShape.circle),
                child: const Icon(
                  Icons.mic_outlined,
                  size: 23,
                ),
              )
            : Container(
                height: 70,
                margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 0),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.green.withOpacity(0.9),
                    shape: BoxShape.circle),
                child: const Icon(
                  Icons.send_outlined,
                  size: 20,
                ),
              ),
      ],
    );
  }
}
