import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp/themes/color.dart';
import 'package:whatsapp/themes/theme_provider.dart';

class ThemeChanger extends StatelessWidget {
  const ThemeChanger({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.secoundry(context).withOpacity(0.1),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.all(15),
      child: Row(
        children: [
          Provider.of<ThemeProvider>(context, listen: false).isDarkTheme
              ? Text("Dark Theme")
              : Text("Light Theme"),
          Spacer(),
          CupertinoSwitch(
            activeColor: Colors.cyan,
            value:
                Provider.of<ThemeProvider>(context, listen: false).isDarkTheme,
            onChanged: (value) {
              Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
            },
          ),
        ],
      ),
    );
  }
}
