import 'package:flutter/material.dart';
import 'package:whatsapp/screens/bottom_navigation_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Colors.white),
        useMaterial3: true,
        brightness: Brightness.light,
      ),
      home: const BottomNavigationScreen(),
    );
  }
}
