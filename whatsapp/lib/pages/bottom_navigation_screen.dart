import 'package:flutter/material.dart';
import 'package:whatsapp/pages/calls/screens/call_screen.dart';
import 'package:whatsapp/pages/communities/screens/community_screen.dart';
import 'package:whatsapp/pages/home/screens/home_screen.dart';
import 'package:whatsapp/pages/updates/screen/update_screen.dart';
import 'package:whatsapp/themes/color.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int isSelected = 0;
  final List _items = const <Widget>[
    HomeScreen(),
    UpdateScreen(),
    CommunityScreen(),
    CallScreen(),
  ];

  //chaning index
  void onTap(int index) {
    setState(() {
      isSelected = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _items[isSelected],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTap,
        currentIndex: isSelected,
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
        showSelectedLabels: true,
        selectedIconTheme: IconThemeData(color: Colors.green.withOpacity(0.9)),
        unselectedIconTheme: IconThemeData(color: AppColors.secoundry(context)),
        backgroundColor: AppColors.background(context),
        selectedFontSize: 13,
        unselectedFontSize: 13,
        selectedLabelStyle: TextStyle(
            fontWeight: FontWeight.bold, color: AppColors.primary(context)),
        unselectedLabelStyle:
            TextStyle(color: AppColors.inversePrimery(context)),
        items: const [
          BottomNavigationBarItem(
            label: "Chats",
            icon: Icon(Icons.chat),
          ),
          BottomNavigationBarItem(
            label: "Updates",
            icon: Icon(Icons.update_sharp),
          ),
          BottomNavigationBarItem(
            label: "Communities",
            icon: Icon(Icons.people_outline),
          ),
          BottomNavigationBarItem(
            label: "Calls",
            icon: Icon(Icons.phone_outlined),
          ),
        ],
      ),
    );
  }
}
