import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp/auth/screens/welcome_screen.dart';
import 'package:whatsapp/themes/theme_provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => ThemeProvider(),
      ),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp',
      theme: Provider.of<ThemeProvider>(context).themeData,
      home: const Welcome(),
    );
  }
}
