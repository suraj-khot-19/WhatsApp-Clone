import 'package:flutter/material.dart';
import 'package:whatsapp/model/user.dart';
import 'package:whatsapp/themes/color.dart';

class MediaScreen extends StatefulWidget {
  final User user;
  const MediaScreen({super.key, required this.user});

  @override
  State<MediaScreen> createState() => _MediaScreenState();
}

class _MediaScreenState extends State<MediaScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.user.name),
      ),
      backgroundColor: AppColors.background(context),
      body: TabBar(
        controller: tabController,
        tabs: [
          Tab(
            child: Text("MEDIA"),
          ),
          Tab(
            child: Text("DOCS"),
          ),
          Tab(
            child: Text("LINKS"),
          ),
        ],
      ),
    );
  }
}
