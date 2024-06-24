import 'package:flutter/material.dart';
import 'package:whatsapp/widgets/app_bar.dart';

class CommunityScreen extends StatelessWidget {
  const CommunityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: MyAppBar(
          title: "Community",
          onTapPhoto: () {},
          onTapQr: () {},
          isSerach: false,
        ),
      ),
      // body: ,
    );
  }
}
