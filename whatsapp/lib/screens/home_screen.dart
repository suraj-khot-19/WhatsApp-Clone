import 'package:flutter/material.dart';
import 'package:whatsapp/widgets/archived.dart';
import 'package:whatsapp/widgets/below_search_bar.dart';
import 'package:whatsapp/widgets/chat_list.dart';
import 'package:whatsapp/widgets/search.dart';
import 'package:whatsapp/widgets/spacer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      //app bar
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          "WhatsApp",
          style: TextStyle(
              color: Colors.green, fontWeight: FontWeight.bold, fontSize: 23),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.photo_library_sharp),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.photo_camera),
          ),
          PopupMenuButton(
              color: Colors.white,
              offset: Offset.fromDirection(BorderSide.strokeAlignCenter),
              position: PopupMenuPosition.over,
              itemBuilder: (context) => const [
                    PopupMenuItem(value: "", child: Text("New Group")),
                    PopupMenuItem(value: "", child: Text("New Brodcast")),
                    PopupMenuItem(value: "", child: Text("Linked Devices")),
                    PopupMenuItem(value: "", child: Text("Starred Messages")),
                    PopupMenuItem(value: "", child: Text("Payments")),
                    PopupMenuItem(value: "", child: Text("Settings")),
                  ]),
        ],
      ),
      //body
      body: const SingleChildScrollView(
        child: Column(
          children: [
            Search(),
            BelowSearchBar(),
            Archived(),
            AddVerticleSpace(height: 10),
            ChatList(),
          ],
        ),
      ),

      //floating action

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {},
        child: const Icon(
          Icons.chat,
          color: Colors.white,
        ),
      ),
    );
  }
}
