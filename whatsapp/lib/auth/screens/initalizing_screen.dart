import 'package:flutter/material.dart';
import 'package:whatsapp/auth/widgets/background_image.dart';
import 'package:whatsapp/pages/bottom_navigation_screen.dart';
import 'package:whatsapp/themes/color.dart';
import 'package:whatsapp/widgets/spacer.dart';

class InitalizingScreen extends StatefulWidget {
  const InitalizingScreen({super.key});

  @override
  State<InitalizingScreen> createState() => _InitalizingScreenState();
}

class _InitalizingScreenState extends State<InitalizingScreen> {
  @override
  void initState() {
    Future.delayed(
      Duration(seconds: 5),
      () {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) {
              return BottomNavigationScreen();
            },
          ),
          (route) {
            return false;
          },
        );
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              AddVerticleSpace(height: 80),
              Text(
                "Initalizing...",
                style: TextStyle(
                    color: Colors.green,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "Please wait a moment",
                style: TextStyle(
                    color: AppColors.secoundry(context), fontSize: 15),
              ),
              AddVerticleSpace(height: 200),
              BackgroundImage(
                height: 250,
                width: 250,
              ),
              AddVerticleSpace(height: 200),
              CircularProgressIndicator(
                color: Colors.green,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
