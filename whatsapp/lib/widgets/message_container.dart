import 'package:flutter/material.dart';

class MessageContainer extends StatefulWidget {
  const MessageContainer({super.key});

  @override
  State<MessageContainer> createState() => _MessageContainerState();
}

class _MessageContainerState extends State<MessageContainer> {
  final TextEditingController _message = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 5,
          ),
        ],
      ),
      margin: const EdgeInsets.only(left: 10, bottom: 10),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
      child: Row(
        children: [
          IconButton(
            icon: const Icon(Icons.emoji_emotions_rounded, color: Colors.grey),
            onPressed: () {},
          ),
          Expanded(
            child: TextField(
              cursorColor: Colors.green,
              controller: _message,
              decoration: InputDecoration(
                hintText: "Message",
                hintStyle: TextStyle(color: Colors.black.withOpacity(0.6)),
                border: InputBorder.none,
              ),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.attach_file, color: Colors.grey),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.camera_alt_outlined, color: Colors.grey),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
