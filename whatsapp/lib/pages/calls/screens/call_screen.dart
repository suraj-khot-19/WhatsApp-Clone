import 'package:flutter/material.dart';
import 'package:whatsapp/themes/color.dart';
import 'package:whatsapp/widgets/app_bar.dart';
import 'package:whatsapp/pages/calls/widget/call_below_app_bar.dart';
import 'package:whatsapp/pages/calls/widget/call_list.dart';
import 'package:whatsapp/widgets/spacer.dart';

class CallScreen extends StatefulWidget {
  const CallScreen({super.key});

  @override
  State<CallScreen> createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background(context),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: MyAppBar(
          title: "Calls",
          onTapQr: () {},
          onTapPhoto: () {},
          onTapSearch: () {},
        ),
      ),
      body: SingleChildScrollView(
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CallBelowAppBar(),
            AddVerticleSpace(height: 10),
            Text(
              "   Recent",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            CallList(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green.withOpacity(0.9),
        onPressed: () {},
        child: const Icon(Icons.call),
      ),
    );
  }
}
