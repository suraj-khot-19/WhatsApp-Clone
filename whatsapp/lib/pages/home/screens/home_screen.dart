import 'package:flutter/material.dart';
import 'package:whatsapp/pages/home/widgets/appbar_popup_button.dart';
import 'package:whatsapp/themes/color.dart';
import 'package:whatsapp/pages/home/widgets/archived.dart';
import 'package:whatsapp/pages/home/widgets/below_search_bar.dart';
import 'package:whatsapp/pages/home/widgets/chat_list.dart';
import 'package:whatsapp/pages/home/widgets/search.dart';
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
          //qr
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.qr_code_scanner),
          ),
          //photo
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.photo_camera_outlined),
          ),
          //more option
          AppbarPopupButton(),
        ],
      ),

      //body
      body: SingleChildScrollView(
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
