import 'package:flutter/material.dart';
import 'package:whatsapp/themes/color.dart';
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
      backgroundColor: AppColors.background(context),

      //app bar
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "WhatsApp",
          style: TextStyle(
              color: AppColors.primary(context),
              fontWeight: FontWeight.bold,
              fontSize: 23),
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
          ),
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
        backgroundColor: AppColors.primary(context),
        onPressed: () {},
        child: const Icon(
          Icons.chat,
          color: Colors.white,
        ),
      ),
    );
  }
}
