import 'package:flutter/material.dart';
import 'package:whatsapp/screens/home_screen.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int isSelected = 0;
  final List _items = const <Widget>[
    HomeScreen(),
    Text("data"),
    Text("data"),
    Text("data"),
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
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.green,
        backgroundColor: Colors.white,
        items: const [
          BottomNavigationBarItem(
            label: "Chats",
            icon: Icon(Icons.chat),
          ),
          BottomNavigationBarItem(
            label: "Updated",
            icon: Icon(Icons.update_disabled_sharp),
          ),
          BottomNavigationBarItem(
            label: "Communities",
            icon: Icon(Icons.people),
          ),
          BottomNavigationBarItem(
            label: "Calls",
            icon: Icon(Icons.phone),
          ),
        ],
      ),
    );
  }
}
