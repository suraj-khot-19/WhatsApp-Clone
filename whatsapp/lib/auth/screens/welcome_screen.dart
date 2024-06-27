import 'package:flutter/material.dart';
import 'package:whatsapp/auth/screens/aggree_continue_screen.dart';
import 'package:whatsapp/auth/widgets/welcome_radio.dart';
import 'package:whatsapp/model/language.dart';
import 'package:whatsapp/themes/color.dart';
import 'package:whatsapp/widgets/spacer.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  List<Language> list = LanguageData().list;
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.arrow_forward_outlined),
          backgroundColor: Colors.green,
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return AggreeContinue(
                  selected: list[selected].name,
                );
              },
            ));
          }),
      backgroundColor: AppColors.background(context),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              AddVerticleSpace(height: 100),
              Container(
                height: 180,
                width: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/back_withop.png",
                    ),
                    fit: BoxFit.fitWidth,
                    filterQuality: FilterQuality.low,
                    opacity: 0.3,
                  ),
                ),
              ),
              Text(
                "Welcome to WhatsApp",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 30),
              ),
              AddVerticleSpace(height: 15),
              Text(
                "choose your language to get started",
                style: TextStyle(
                    color: AppColors.secoundry(context), fontSize: 18),
              ),
              ListView.builder(
                itemCount: list.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return WelcomeRadio(
                    selected: selected,
                    title: list[index].name,
                    subtitile: list[index].nameInEnglish,
                    onTap: (value) {
                      setState(() {
                        selected = value!;
                      });
                    },
                    value: index,
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
